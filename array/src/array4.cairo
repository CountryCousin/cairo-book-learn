// use array:: ArrayTrait;
// use box:: BoxTrait;
// use debug::PrintTrait;


//
// Note: `ArrayTrait::get` expects a `usize`, which is `u32`
//

// fn take_index(index_to_access:usize){
//     let mut arr = ArrayTrait::<u128>::new();
//     arr.append(120_u128);
//     // let index_to_access = 1_usize;
//     match arr.get(index_to_access){
//         Option::Some(x) => {
//            let mut thins=  *x.unbox();
//            thins.print();
//         },

//         Option::None(_)=>{
//             let mut data = ArrayTrait::new();
//             data.append('out of bound');
//             // panic(data)
//             data.print();
    
//         }
//     }
// }

// fn main(){
//     take_index(0_usize);
// }



// using the `get()` method 
// use get when you prefer to handle such cases gracefully without panicking.

use array:: ArrayTrait;
use box:: BoxTrait;

fn main(){
    get_index(0_u128);
}

// Note: `ArrayTrait::get` expects a `usize`, which is `u32`
// so the argument below wont work.


// this error gets thrown if we attempt to run the code below 
//``` error: Unexpected argument type. Expected: "core::integer::u32", found: "core::integer::u128".
//  --> array4.cairo:44:19
//     match arr.get(index_to_access){
//                   ^*************^ ```



fn get_index(index_to_access: u128)-> u128{
    let mut arr = ArrayTrait::<u128>::new();
    arr.append(100_u128);
    match arr.get(index_to_access){
        Option::Some(x) => {
            *x.unbox()
        },

        Option::None(_)=>{
            let mut data = ArrayTrait::new();
            data.append('out of bound');
            panic(data)
        }
    }

}