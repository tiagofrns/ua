import socket
import time
def receive_messages(client_socket):
    while True:
        try:
            message = client_socket.recv(1024).decode("utf-8")      
            print(message)
        except Exception as e:
            print("Erro ao receber mensagem:", e)
            break


def send_message(client_socket):
    while True:
        message = input()
        try:
            client_socket.send(message.encode("utf-8"))
        except Exception as e:
            print("Erro ao enviar mensagem:", e)
            break




def main():
 

    tcp_c = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    
    try:
        tcp_c.connect(("127.0.0.1", 1234))
    except Exception as e:
        print("Erro ao conectar:", e)
        return
    
    while True:
        str_data = input("> ")
        b_data = str_data.encode("utf-8")
        tcp_c.send(b_data)
    
    
    tcp_c.close()

main()