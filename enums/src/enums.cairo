use debug::PrintTrait;
use debug::print;


#[derive(Drop)]
enum Message {
    Quit : (),
    //Echo : (felt252),
    Move : (),
}

trait Processing {
    fn process(self: Message);
   // fn processval(self: Message)-> felt252;
}

impl ProcessingImpl of Processing {
    fn process(self: Message) {
        match self {
            Message::Quit(()) => {
                'quitting'.print();
            },
           // Message::Echo(value) => {
               // 'value'.print();
           // },
            Message::Move(_) => {
                'moving'.print();
            },
        }
    }
}

fn main(){
   let msg: Message = Message::Quit(());
   let msge: Message = Message::Move(());
   //let val: Message = Message:: Echo(2);
  msg.process();
  msge.process()
  //val.processval()
}


