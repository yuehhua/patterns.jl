abstract type Beverage end

# template
function prepare(b::Beverage)
    boil_water()
    brew!(b)
    pour_in_cup(b)
    add_condiments!(b)
end

boil_water() = println("Boil water...")

function brew! end

function pour_in_cup end

function add_condiments! end



mutable struct Coffee <: Beverage
    content::String
    condiment::String
end

function brew!(c::Coffee)
    c.content = "coffee"
    println("Brew $(c.content)...")
end

pour_in_cup(::Coffee) = println("Pour coffee in cup...")

function add_condiments!(c::Coffee)
    c.condiment = "milk and sugar"
    println("Add $(c.condiment)...")
end



mutable struct Tea <: Beverage
    content::String
    condiment::String
end

function brew!(t::Tea)
    t.content = "black tea"
    println("Brew $(t.content)...")
end

pour_in_cup(::Tea) = println("Pour tea in cup.")

function add_condiments!(t::Tea)
    t.condiment = "lemon"
    println("Add $(t.condiment)...")
end
