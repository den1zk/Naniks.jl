using Test

include("../src/Naniks.jl")
#using NN

url = "tcp://127.0.0.1:3000"
socket_server = NN.Socket(NN.Push)
@test typeof(NN.bind(socket_server, url)) == NN.Socket
@test socket_server.endpoint_id >= 0
println(socket_server)

socket_client = NN.Socket(NN.Pull)
@test typeof(NN.connect(socket_client, url)) == NN.Socket
@test socket_client.endpoint_id >= 0
println(socket_client)
