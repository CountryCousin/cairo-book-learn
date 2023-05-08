use debug::PrintTrait;
use debug::print;

enum Coin {
    Dirham: (),
    Euro: (),
    Dollar: (),
    Rouble: (),
}

trait ProcessingCents {
    fn value_in_cents(self: Coin);

}

impl ProcessingImpl of ProcessingCents {
        fn value_in_cents(self: Coin) {
            match self {
                Coin::Dirham(()) => 1.print(),
                Coin::Euro(()) => 2.print(),
                Coin::Dollar(()) => 8.print(),
                Coin::Rouble(()) => 8.print(),
            }
        }
}
fn main() {
    // let coi: Coin = Coin::Dirham(());
    //  coi.value_in_cents();
    Coin::Dirham(()).value_in_cents(); // this works too
   
}
