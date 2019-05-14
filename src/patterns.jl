__precompile__(true)

module patterns
    import Base: notify

    export

    # composite
    Graphic,
    Picture,
    Line,
    Text_,
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
    subscribe,

    # chain_of_responsibility
    Account,
    can_pay,
    pay,
    Bank,
    Paypal,
    Bitcoin,

    # template
    Beverage,
    Coffee,
    Tea,
    prepare,
    boil_water,
    brew!,
    pour_in_cup,
    add_condiments!


    include("composite.jl")
    include("decorator.jl")
    include("observer.jl")
    include("chain_of_responsibility.jl")
    include("template.jl")


end # module
