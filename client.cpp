#include<iostream>
#include<boost/asio.hpp>

using boost::asio::ip::tcp;

class TcpClient{
    public:
    TcpClient(boost::asio::io_context& io_context)
    : io_context_(io_context), socket_(io_context) {}

    // тут мы должны по идее подключиться к серверу
    void start(const std::string& server, const std::string& port){
        tcp::resolver resolver(io_context_);
        tcp::resolver::results_type endpoints = resolver.resolve(server, port);

        boost::asio::async_connect(socket_,endpoints,
            [this](boost::system::error_code ec, tcp::endpoint){
                if(!ec){
                    std::cout << "Connected to server" << std::endl;
                    //ассинхронно отправляем сообщение
                    sendRequest();
                }else{
                    std::cerr << "Error connecting to server: " << ec.message() << std::endl; 
                }
            });
    }

    private:
    //отправляем запрос
    void sendRequest(){
        std::string request = "Hello, server!";
        boost::asio::async_write(socket_, boost::asio::buffer(request),
            [this](boost::system::error_code ec, std::size_t length){
                if (!ec)
                {
                    std::cout << "Data sent to server" << std::endl;
                    //асинхронно ждем ответа 
                    receiveResponse();
                } else{
                    std::cerr << "Error sending data" << ec.message() << std::endl;
                }
            
            });
    }
    //получаем ответ
    void receiveResponse(){
        boost::asio::async_read(socket_, boost::asio::buffer(response_, max_length), boost::asio::transfer_all(),
        [this](boost::system::error_code ec, std::size_t length) {
                if (!ec) {
                    std::cout << "Received response from server: " << std::string(response_, length) << std::endl;
                } else {
                    std::cerr << "Error receiving response: " << ec.message() << std::endl;
                }
            });

    }

    boost::asio::io_context& io_context_;
    tcp::socket socket_;
    enum {max_length = 1024};
    char response_[max_length];
};

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
        std::cerr << "exeption: " << e.what() << '\n';
    }
    return 0;
    
}
