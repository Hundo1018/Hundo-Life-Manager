mod model;

use std::{
    io::{Read, Write},
    net::{TcpListener, TcpStream},
};

const PORT: i32 = 9487;

fn handle_connection(mut stream: TcpStream) {
    print!("connected!\r\n");
    let mut buffer = [0; 512];
    let c = stream.read(&mut buffer).unwrap();
    print!("請求內容:{}\r\n", String::from_utf8_lossy(&buffer[..c]));
    let response = format!("\r\nTEST!\r\n");
    stream.write(response.as_bytes()).unwrap();
    stream.flush().unwrap();
}

fn main() {
    //TODO:拆分網路溝通的部分
    let listener = TcpListener::bind(format!("127.0.0.1:{}", PORT)).unwrap();
    for stream in listener.incoming() {
        let stream = stream.unwrap();
        handle_connection(stream);
    }
}
