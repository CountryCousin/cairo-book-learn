use debug::PrintTrait;


fn main(){
    let width1 = 2_u64;
    let height1 = 3_u64;
    let area = area(width1, height1);
    area.print();
}

fn area (width: u64, height : u64)-> u64{
    let result = width * height;
    result
}