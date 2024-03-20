#include <iostream>
#include <boost/asio.hpp>
#include "headers/TcpServer.h"

using boost::asio::ip::tcp;

int main() {
    try {
        boost::asio::io_context io_context;
        TcpServer server(io_context);
        io_context.run();
    } 
    catch (std::exception& e) 
    {
        std::cerr << "Exception: " << e.what() << std::endl;
    }
    return 0;
}
