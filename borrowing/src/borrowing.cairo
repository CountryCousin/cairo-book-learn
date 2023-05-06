use array::ArrayTrait;
use debug::PrintTrait;

fn main() {
    let mut arr0 = ArrayTrait::new();
    fill_array(ref arr0);
    arr0.print();
}

fn fill_array(ref arr: Array<felt252>) {
    arr.append(22);
    arr.append(56);
}