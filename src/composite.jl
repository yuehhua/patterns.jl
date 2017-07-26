"""
Picture is composed of Line, Text, Circle and itself.
Graphic supertype makes recursive composition easy.

Composite pattern treats subtype of Graphic in a uniform manner.
"""


abstract type Graphic end


mutable struct Picture <: Graphic
    children::Vector{Graphic}
    Picture() = new(Graphic[])
end

add!(pic::Picture, g::Graphic) = push!(pic.children, g)
remove!(pic::Picture, g::Graphic) = deleteat!(pic.children, getindex(pic.children, g))
children(pic::Picture) = pic.children
draw(pic::Picture) = foreach(draw, pic.children)


struct Line <: Graphic
    length::Float64
end

draw(l::Line) = println("Draw a $(l.length) cm line.")


struct Text <: Graphic
    str::String
end

draw(t::Text) = println(t.str)


struct Circle <: Graphic
    r::Float64
end

draw(c::Circle) = println("Draw a circle within a radius of $(c.r) cm.")
