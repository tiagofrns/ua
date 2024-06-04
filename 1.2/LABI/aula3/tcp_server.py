import socket
import time
def main():
    tcp_s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    tcp_c = socket.socket(socket.AF_INET, socket.SOCK_STREAM)


    
    tcp_s.bind(("127.0.0.1", 2222))
    tcp_c.bind(("127.0.0.1", 0))
    

    tcp_s.listen(1)
    client_s, client_addr = tcp_s.accept()
    time.sleep(7)
    print("--")
    tcp_c.connect(("127.0.0.1", 2223))
    while True:
        b_data = client_s.recv(4096)
        data = input("<-: ")
        client_s.send(data.encode("utf-8"))

        c_data = tcp_c.recv(4096)
        str_data = c_data.decode("utf-8")
        print("->: %s \n" % str_data)
    client_s.close()
    tcp_s.close()
main()