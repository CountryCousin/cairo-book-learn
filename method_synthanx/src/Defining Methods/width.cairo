// we can choose to give a method the same name as one of the struct’s fields. 
// For example, we can define a method on Rectangle that is also named width:

use debug::PrintTrait;
#[derive(Copy,Drop)]
struct Rectangle{
    width : u64,
    height : u64,
}

trait RectangleTrait{
    fn width (self: @Rectangle)-> bool;
}

impl RectangleImpl of RectangleTrait{
    fn width(self: @Rectangle)-> bool{
        *self.width > 0_u64
    }
}

fn main(){
    let rect1 = Rectangle{ width: 3_u64, height: 5_u64};
    rect1.width().print();
}