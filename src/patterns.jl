__precompile__(true)

module patterns
    import Base: add!, remove!

    export

    # composite
    Graphic,
    Picture,
    Line,
    Text,
    Circle,
    add!,
    remove!,
    children,
    draw,

    # decorator
    LCD,
    Window,
    Decorator,
    Border,
    VerticalScrollBar,
    HorizontalScrollBar,
    draw,
    scroll

    include("composite.jl")
    include("decorator.jl")

end # module
