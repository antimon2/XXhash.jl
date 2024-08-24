using Test

files = isempty(ARGS) ? filter(contains(r"^test_.*\.jl$"), readdir(@__DIR__)) : ARGS

@testset for file in files
    include(file)
end
