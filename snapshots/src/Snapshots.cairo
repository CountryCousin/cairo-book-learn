use array::ArrayTrait;
use debug::PrintTrait;

// snapshot transfers ownership but is read only

fn main() {
    let mut arr0 = ArrayTrait::<u8>::new();
    let arrr = fill_array(@arr0);
    arrr.print();
}

fn fill_array(arr: @Array<u8>)-> usize{
    // arr.append(2) //can't work because at the moment only `length` method work with snapshot on array
    arr.len()
}


//
// another example 
//

// use array::ArrayTrait;
// use debug::PrintTrait;

// fn main() {
//     let mut arr1 = ArrayTrait::<u128>::new();
//     let first_snapshot = @arr1; // Take a snapshot of `arr1` at this point in time
//     arr1.append(1_u128); // Mutate `arr1` by appending a value
//     let first_length = calculate_length(first_snapshot); // Calculate the length of the array when the snapshot was taken
//     let second_length = calculate_length(@arr1); // Calculate the current length of the array
//     first_length.print();
//     second_length.print();
// }

// fn calculate_length(arr: @Array<u128>) -> usize {
//     arr.len()
// }