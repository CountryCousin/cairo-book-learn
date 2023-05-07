use debug::PrintTrait;
use debug::print;


#[derive(Drop)]
enum Message {
    Quit : (),
    Echo : (felt252,),
    // Echo : felt252, // this works too but I guess its for single element.
    Move : (u128, u128),
}

trait Processing {
    fn process(self: Message);

}

impl ProcessingImpl of Processing {
    fn process(self: Message) {
        match self {
            Message::Quit(()) => { 'quitting'.print(); },
            Message::Echo((value)) => {  'value'.print();},
        //    Message::Echo(value) => {  'value'.print();},
            // Message::Move((x, y)) => {'Moving'.print();},
            Message::Move((x, y)) => {y.print(); x.print();},
        }
    }
}

fn main(){
   let msg: Message = Message::Quit(());
   msg.process();
   let msge: Message = Message::Move((2_u128, 1_u128));
   msge.process();
//    let val : Message = Message ::Echo(2);
//    val.process();

   let val : Message = Message ::Echo((2,));
   val.process();



}

