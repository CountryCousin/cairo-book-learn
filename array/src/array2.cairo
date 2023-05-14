// to use at() method
// use `at` when you want to panic on out-of-bounds access attempts 

use array::ArrayTrait;
use debug::PrintTrait;

fn main(){
    let mut a = ArrayTrait::new();

    a.append(0);
    a.append(1);

    let first = *a.at(0_usize);
    let second = *a.at(1_usize);
    second.print();
}