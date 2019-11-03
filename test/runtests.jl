using patterns
using Test

tests = ["chain_of_responsibility",
         "composite",
         "decorator",
         "iterator",
         "observer",
         "template",
         "state",
         "singleton"]

@info "Running tests:"

for t in tests
    tfile = string(t, ".jl")
    println()
    println()
    include(tfile)
end
