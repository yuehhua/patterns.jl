"""
A gate will open while showing a card.
Otherwise, the gate is locked.
"""

abstract type State end

struct Locked <: State
end

isopen(::Locked) = false

struct Unlocked <: State
end

isopen(::Unlocked) = true



mutable struct Gate
    state::State
    Gate() = new(Locked())
end

isopen(g::Gate) = isopen(g.state)
lock!(g::Gate) = (g.state = Locked())
unlock!(g::Gate) = (g.state = Unlocked())

function open(g::Gate)
    if g.state isa Unlocked
        println("The gate is open.")
    end
end
