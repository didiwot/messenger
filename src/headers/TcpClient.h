#ifndef TCPCLIENT_H
#define TCPCLIENT_H

#include<iostream>
#include<boost/asio.hpp>
#include<string>

using boost::asio::ip::tcp;

class TcpClient {
public:
    TcpClient(boost::asio::io_context& io_context)
    : io_context_(io_context), socket_(io_context) {}

    void start(const std::string& , const std::string& );

private:
    void sendRequest();
    void receiveResponse();

    boost::asio::io_context& io_context_;
    tcp::socket socket_;
    enum {max_length = 1024};
    char response_[max_length];
};

void TcpClient::start(const std::string& server, const std::string& port){
        tcp::resolver resolver(io_context_);
        tcp::resolver::results_type endpoints = resolver.resolve(server, port);

        boost::asio::async_connect(socket_, endpoints,
            [this](boost::system::error_code ec, tcp::endpoint){
                if(!ec){
                    std::cout << "Connected to server" << std::endl;
                    sendRequest();
                } else {
                    std::cerr << "Error connecting to server: " << ec.message() << std::endl; 
                }
            });
    }


void TcpClient::sendRequest(){
    std::string request = "Hello, server!";
    boost::asio::async_write(socket_, boost::asio::buffer(request),
        [this](boost::system::error_code ec, std::size_t length){
            if (!ec)
                {
                    std::cout << "Data sent to server" << std::endl;
                    receiveResponse();
                } else{
                std::cerr << "Error sending data" << ec.message() << std::endl;
            }
        });
}


void TcpClient::receiveResponse(){
    socket_.async_read_some(boost::asio::buffer(response_, max_length),
        [this](boost::system::error_code ec, std::size_t bytes_transferred) {
            if (!ec) {
                std::cout << "Received response from server: " << std::string(response_, bytes_transferred) << std::endl;
                socket_.close();
            } else {
                std::cerr << "Error receiving response: " << ec.message() << std::endl;
            }
        });
}

#endif
