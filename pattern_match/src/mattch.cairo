use debug::print;
use debug::PrintTrait;

enum Coin {
    Penny: (),
    Nickel: (),
    Dime: (),
    Quarter: (),
}

fn main() {
    Coin::Penny(()).print();
}

impl MessagePrintIm of PrintTrait<Coin> {
    fn print(self: Coin) {
        match self {
            Coin::Penny(()) => 1.print(),
            Coin::Nickel(()) => 5.print(),
            Coin::Dime(()) => 10.print(),
            Coin::Quarter(()) => 25.print(),
        }
    }
}


