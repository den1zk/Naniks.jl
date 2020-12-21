using Test

include("../src/Naniks.jl")
#using NN

socket = NN.Socket(NN.Pull)
@test typeof( socket ) == NN.Socket
@test typeof(NN.bind(socket, "tcp://127.0.0.1:3000")) == NN.Socket
@test socket.endpoint_id >= 0
