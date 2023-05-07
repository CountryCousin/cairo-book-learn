use debug::PrintTrait;
use debug::print;

#[derive(Copy, Drop)]
struct User {
    active: bool,
    username: felt252,
    email: felt252,
    sign_in_count: u64,
}

fn main(){
    let user1 = User{
        active : true,
        username : 'Page' ,
        email : 'Page@gmail.com',
        sign_in_count: 1_u64,
};
    // to get a specific value:
    let active = user1.active;
    active.print();
}