use debug::PrintTrait;
use debug::print;

enum Coin {
    Dirham: (),
    Euro: (),
    Dollar: (),
    Rouble: (),
}

trait Processing {
    fn value_in_cents(coin: Coin);

}

impl ProcessingImpl of Processing {
        fn value_in_cents(coin: Coin) {
            match coin {
                Coin::Dirham(()) => 1,
                Coin::Euro(_) => 2,
                Coin::Dollar(_) => 8,
                Coin::Rouble(_) => 8,
            }
        }
}
fn main() {
    let coi: Coin = Coin::Dirham(());
    //  coi.value_in_cents();
    // Coin::Dirham(()).print();
   
}
