
import socket


msgFromClient = "Hello UDP Server"

bytesToSend = str.encode(msgFromClient)

serverAddressPort = ("10.10.10.221", 20001)

bufferSize = 1024
localIP = "10.10.10.201"

localPort = 20002


# Create a UDP socket at client side

UDPClientSocket = socket.socket(family=socket.AF_INET, type=socket.SOCK_DGRAM)

UDPClientSocket.bind((localIP, localPort))

# Send to server using created UDP socket

UDPClientSocket.sendto(bytesToSend, serverAddressPort)


msgFromServer = UDPClientSocket.recvfrom(bufferSize)


msg = "Message from Server {}".format(msgFromServer[0])

print(msg)
