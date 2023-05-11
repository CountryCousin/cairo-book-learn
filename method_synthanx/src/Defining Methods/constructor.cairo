// Functions in traits that aren’t methods are often used
//  for constructors that will return a new instance of the struct

use debug::PrintTrait;
#[derive(Copy, Drop)]

struct Rectangle{
    width: u64,
    height: u64,
}

trait RectangleTrait{
    fn square(size: u64) -> Rectangle;
    fn squareArea(self : Rectangle)-> u64;
}

impl RectangleImpl of RectangleTrait{
     
     // this methods sets the size(dimension) of the square 

    fn square(size: u64)-> Rectangle{
        Rectangle{width: size, height: size}
    }

    // this methods calculates the area 
   
    fn squareArea (self : Rectangle)-> u64{
        self.width * self.height
    }
}


impl RectanglePrintImpl of PrintTrait<Rectangle> {
    fn print(self: Rectangle) {
        self.width.print();
        self.height.print();

        // The two lines below can calculate also

        // let result = self.width * self.height;
        // result.print();
    }
}

fn main(){
   
//    let squar = RectangleImpl::square(10_u64); // this synthax works too.

let Dimension_of_square = RectangleTrait::square(6_u64);
   Dimension_of_square.print();
   Dimension_of_square.squareArea().print();

   
   
}