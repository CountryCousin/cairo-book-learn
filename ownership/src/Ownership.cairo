use array::ArrayTrait;
use debug::PrintTrait;
use clone::Clone;

fn main() {
    
    let new_array_for_fill_arr = ArrayTrait :: new();
    let mut value_of_fill_arr = fill_arr(new_array_for_fill_arr);
    value_of_fill_arr.print();

    'Before the added values'.print();

    let arr0 = ArrayTrait::new();
    let mut arr1 = fill_arr(arr0);

    arr1.append(88);
    arr1.append(50);
    arr1.span().snapshot.clone().print();
}

fn fill_arr(arr: Array<felt252>) -> Array<felt252> {
    let mut arr = arr;
    arr.append(22);
    arr.append(2);
    arr
}

// run `cairo-run src/Ownership.cairo --available-gas=2000000` for output