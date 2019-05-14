@info "Test state pattern..."

g = Gate()
println("The gate is open? ", isopen(g))
unlock!(g)
println("The gate is open? ", isopen(g))
open(g)
