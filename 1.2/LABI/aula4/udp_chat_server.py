# import socket
# def main():
#     udp_s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
#     udp_s.bind(("127.0.0.1", 1234))
#     addr_list = [] # Lista de sockets conhecidos
#     while True:
#         b_data, addr = udp_s.recvfrom(4096)
#         print(b_data.decode("utf-8"))
# # Adicionar o nome do socket à lista de sockets conhecidos
#         if not addr in addr_list: 
#             addr_list.append(addr)
# # Enviar a mensagem para todos
#         for dst_addr in addr_list: 
#             udp_s.sendto((b_data.decode("utf-8")).upper(), dst_addr)
#     udp_s.close()

# main()


import socket
import select
import sys
def main():
    udp_s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    udp_s.bind(("127.0.0.1", 0))
    server_addr = ("127.0.0.1", 1234)
    while True:
        rsocks = select.select([udp_s, sys.stdin, ], [], [])[0]
        for sock in rsocks:
            if sock == udp_s:
                print("Informação recebida no socket")
# Informação recebida no socket
                b_data, addr = udp_s.recvfrom(4096)
                sys.stdout.write("%s\n" % b_data.decode("utf-8"))
            elif sock == sys.stdin:
# Informação recebida do teclado
                print("Informação recebida do teclado")
                str_data = sys.stdin.readline()
                udp_s.sendto(str_data.encode("utf-8"), server_addr)
    udp_s.close()


main()