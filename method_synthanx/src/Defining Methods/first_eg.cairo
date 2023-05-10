use debug::PrintTrait;
#[derive(Copy, Drop)]
struct Rectangle {
    width : u64,
    height : u64,
}

// We chose self: @Rectangle here for the same reason 
// we used @Rectangle in the function version: 
// we don’t want to take ownership

trait RectangleTrait{
    fn area(self: @Rectangle)-> u64;
}

impl RectangleImpl of RectangleTrait{
    fn area (self: @Rectangle)-> u64{
        (*self.width) * (*self.height)
    }
}

fn main(){
    let rect1 = Rectangle{ width:3_u64, height: 5_u64};
    rect1.area().print();
}


// NOTE 
// If we wanted to change the instance that we’ve called the method on as part 
// of what the method does, we’d use `ref self: Rectangle`  as the first parameter.