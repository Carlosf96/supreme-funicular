module main

import vweb

struct App {
    vweb.Context
}

fn main() {
    vweb.run<App>(8081)
} 


pub fn (mut app App) index() vweb.Result {
    for i in 2 .. 10 {
        fib_n := fib(i)
        println(fib_n)
    }
    message := 'Hello world from vweb'
    return $vweb.html()
}

pub fn (app &App) init() {

}

pub fn (app &App) init_once() {

}

fn fib(n int) int {
    if n < 2 {return n} else { return fib(n - 1) + fib(n - 2)}
}
