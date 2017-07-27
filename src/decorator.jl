"""
The Window would be a fundamental widget.
Decorator is aimed to add different kinds of responsibilities on Window.
The same decorator could be added several times to the same window.
"""

abstract type LCD end

struct Window <: LCD
    size::Float64
end

draw(::Window) = println("Draw basic window view.")


abstract type Decorator <: LCD end

mutable struct Border <: Decorator
    component::LCD
    size::Float64
end

function draw(b::Border)
    println("Draw a $(b.size) width border")
    draw(b.component)
    # do something
end


mutable struct VerticalScrollBar <: Decorator
    component::LCD
end

function draw(vsb::VerticalScrollBar)
    # do something
    draw(vsb.component)
    println("Draw vertical scroll bar.")
end

scroll(vsb::VerticalScrollBar, direction::Symbol) =
    println("Vertical scroll bar scrolls $(direction)")


mutable struct HorizontalScrollBar <: Decorator
    component::LCD
end

function draw(hsb::HorizontalScrollBar)
    # do something
    draw(hsb.component)
    println("Draw horizontal scroll bar.")
end

scroll(hsb::HorizontalScrollBar, direction::Symbol) =
    println("Horizontal scroll bar scrolls $(direction)")
