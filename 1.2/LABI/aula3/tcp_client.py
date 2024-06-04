import socket
def main():
    tcp_s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    tcp_c = socket.socket(socket.AF_INET, socket.SOCK_STREAM)


    tcp_s.bind(("127.0.0.1", 1515))
    tcp_s.listen(1)
    client_s, client_addr = tcp_s.accept()
    
    tcp_c.bind(("127.0.0.1", 2223))
    tcp_c.listen(1)
    client_c, client_addr = tcp_c.accept()
    while True:
        str_data = input("<-: ")
        b_data = str_data.encode("utf-8")
        tcp_s.send(b_data)
# ---
        b_data = tcp_s.recv(4096)
        str_data = b_data.decode("utf-8")
        print("->: %s \n" % str_data)
    tcp_s.close()


main()