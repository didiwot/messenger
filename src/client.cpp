#include<iostream>
#include<boost/asio.hpp>
#include"headers/TcpClient.h"

int main(){
    try
    {
        boost::asio::io_context io_context;
        TcpClient client(io_context);
        client.start("127.0.0.1", "8080"); 
        io_context.run();
    }
    catch(const std::exception& e)
    {
        std::cerr << "exception: " << e.what() << '\n';
    }
    return 0;
}
