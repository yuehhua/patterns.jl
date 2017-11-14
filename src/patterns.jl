__precompile__(true)

module patterns
    import Base: add!, remove!, notify

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
    scroll,

    # observer
    Newspaper,
    Subscriber,
    SubscriberA,
    SubscriberB,
    AppleNews,
    BananaNews

    include("composite.jl")
    include("decorator.jl")
    include("observer.jl")

end # module
