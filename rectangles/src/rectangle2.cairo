// using structs to find area of rectangle 

use debug:: PrintTrait;

struct Rectangle{
    width: u64,
    height : u64,
}

fn main(){
    let rectangle = Rectangle{
        width: 2_u64,
        height: 3_u64,
    };
    let area = area(rectangle);
    area.print();
}

fn area(rectangle: Rectangle)-> u64{
    rectangle.width * rectangle.height
}