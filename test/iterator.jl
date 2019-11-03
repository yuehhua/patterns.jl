@info "Test iterator pattern..."

for i = AddOne(0, 10)
    println(i)
end

println()

a = [5,4,3,2,1]
for i = ArrayIterator(a, 1, 3)
    println(i)
end

println()

for i = ArrayIterator(a, 2, 3)
    println(i)
end
