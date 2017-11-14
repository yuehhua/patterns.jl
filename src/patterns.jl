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
    BananaNews,

    # chain_of_responsibility
    Account,
    can_pay,
    pay,
    Bank,
    Paypal,
    Bitcoin

    include("composite.jl")
    include("decorator.jl")
    include("observer.jl")
    include("chain_of_responsibility.jl")

end # module
