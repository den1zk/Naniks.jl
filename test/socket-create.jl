using Test

include("../src/Naniks.jl")
#using NN

@test typeof( NN.Socket(NN.Req) ) == NN.Socket
@test typeof( NN.Socket(false,NN.Req) ) == NN.Socket

#@test_throws MethodError NN.Socket(12, Pull)
#@test_throws ErrorException NN.Socket(Cint(12), Pull)
