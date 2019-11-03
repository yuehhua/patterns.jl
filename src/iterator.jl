"""
Iterator pattern in Julia is easy to use.
We just have to define two things here: an Iterable type and its interface `iterate`.
The type stores necessary information for iteration.
Each time you call `iterate`, it gives you a tuple (element, state).
Element is the thing you will throw out to user.
State is a counter to inidicate corresponding element.
`iterate` should output the tuple (element, state).

Using Iterable in for-loop context will be:

for element in iterable
    # body
end

It will further translate into more detailed syntax:

iter_result = iterate(iterable)
while iter_result !== nothing
    (element, state) = iter_result
    # body
    iter_result = iterate(iterable, state)
end

Heavily referenced from: https://invenia.github.io/blog/2018/07/06/iteratorsinjulia07/

We have two examples here.
"""

struct AddOne
    start::Int
    length::Int
end

function Base.iterate(iter::AddOne, state=(iter.start, 0))
    element, count = state

    if count >= iter.length
       return nothing
    end

    return (element, (element + 1, count + 1))
end


struct ArrayIterator
    array::Vector
    start::Int
    length::Int
end

function Base.iterate(iter::ArrayIterator, state=(iter.array[iter.start], iter.start))
    element, count = state

    if count - iter.start >= iter.length
       return nothing
    end

    return (element, (iter.array[count + 1], count + 1))
end
