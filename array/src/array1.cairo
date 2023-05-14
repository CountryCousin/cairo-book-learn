use option:: OptionTrait;
use array :: ArrayTrait;
use debug :: PrintTrait;

fn main (){
    let mut a = ArrayTrait :: new();
    a.append(10);
    a.append(1);
    a.append(2);

    // To remove an element from the front of an array, you can use the pop_front() method

    let first_value = a.pop_front().unwrap();
    first_value.print();
}