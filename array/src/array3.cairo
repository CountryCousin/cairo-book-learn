// using the `get()` method 
// use get when you prefer to handle such cases gracefully without panicking.

// use array:: ArrayTrait;
// use box:: BoxTrait;

// fn main()-> u128{
//     let mut arr = ArrayTrait::<u128>::new();
//     arr.append(100_u128);
//     let index_to_access = 1_usize;
//     match arr.get(index_to_access){
//         Option::Some(x) => {
//             *x.unbox()
//         },

//         Option::None(_)=>{
//             let mut data = ArrayTrait::new();
//             data.append('out of bound');
//             panic(data)
//         }
//     }
// }



// same thing with print()


use array:: ArrayTrait;
use box:: BoxTrait;
use debug::PrintTrait;

fn main(){
    let mut arr = ArrayTrait::<u128>::new();
    arr.append(100_u128);
    let index_to_access = 1_usize;
    match arr.get(index_to_access){
        Option::Some(x) => {
           let mut thins=  *x.unbox();
           thins.print();
        },

        Option::None(_)=>{
            let mut data = ArrayTrait::new();
            data.append('out of bound');
            // panic(data)
            data.print();
    
        }
    }
}