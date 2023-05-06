use array::ArrayTrait;
use debug::PrintTrait;

// ref can't transfer ownership

fn main() {
    let mut arr0 = ArrayTrait::new();
   let mut tj = fill_array(ref arr0); // not valid at all meaning we can't return `tj`
    arr0.print();
    
}

fn fill_array(ref arr: Array<felt252>) {
    arr.append(22);
    arr.append(56);
}