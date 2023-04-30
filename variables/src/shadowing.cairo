use debug::PrintTrait;
fn main() {
    let x = 5;
    'this one nko'.print();
    x.print();
    let x = x + 1;
    {
        let x = x * 2;
        'Inner scope x value is:'.print();
        x.print()
    }
    'Outer scope x value is:'.print();
    x.print();
}
