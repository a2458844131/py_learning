import socket
socket.setdefaulttimeout(2)
s= socket.socket()
s.connect(("47.92.122.212",5522))
ans=s.recv(1024)
print(ans)