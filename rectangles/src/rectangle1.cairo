// using Tuples
use debug:: PrintTrait;

fn main(){
    let rectangle = (3_u64, 2_u64);
    let area = area(rectangle);
    area.print();
}

fn area(dimension: (u64, u64))-> u64{
    let (x, y) = dimension;
    x * y
}