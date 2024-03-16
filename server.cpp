#include <iostream>
#include <boost/asio.hpp>

using boost::asio::ip::tcp;
#if 1
class TcpServer {
public:
    TcpServer(boost::asio::io_context& io_context)
        : io_context_(io_context), acceptor_(io_context, tcp::endpoint(tcp::v4(), 8080)) {
        startAccept();
    }

private:
    //создаем новое подключение 
    void startAccept() {
        new_connection_.reset(new tcp::socket(io_context_));
        acceptor_.async_accept(*new_connection_,
            [this](const boost::system::error_code& ec) {
                if (!ec) {
                    std::cout << "Client connected" << std::endl;
                    startRead();
                } else {
                    std::cerr << "Connected error: " << ec.message() << std::endl;
                }
                startAccept();
            });
    }
    //начинаем читать
    void startRead() {
        new_connection_->async_read_some(boost::asio::buffer(data_, max_length),
            [this](const boost::system::error_code& ec, std::size_t bytes_transferred) {
                if (!ec) {
                    std::cout << "Received data from client: " << std::string(data_) << std::endl;
                    startWrite(bytes_transferred);
                } else {
                    std::cerr << "Received error: " << ec.message() << std::endl;
                }
            });
    }
    //начинаем отправлять 
    void startWrite(std::size_t length) {
        if(new_connection_->is_open()){std::cout << "connect ok \n";};


        boost::asio::async_write(*new_connection_, boost::asio::buffer(request, request.size()),
            [this](const boost::system::error_code& ec, std::size_t /*bytes_transferred*/) {
                if (!ec) {
                    std::cout << "Sent response to client" << std::endl;
                    startRead();
                }else {
                    std::cerr << "Received error: " << ec.message() << std::endl;
                }
            });
    }

    boost::asio::io_context& io_context_;
    tcp::acceptor acceptor_;
    std::shared_ptr<tcp::socket> new_connection_;
    enum { max_length = 1024 };
    char data_[max_length];
    std::string request = "I'm Ok";
};

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
#endif
