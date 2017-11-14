"""
This pattern can be apply to subscription behavior.
Suppose we want to subscribe for newspapers.
"""
abstract type Newspaper end
abstract type Subscriber end

function subscribe(::Subscriber, ::Newspaper) end
function unsubscribe(::Subscriber, ::Newspaper) end
function notify(::Newspaper) end



struct SubscriberA <: Subscriber
    name::String
end

update(a::SubscriberA, s::String) = println("$(a.name) is notified by $(s).")



struct SubscriberB <: Subscriber
    name::String
end

update(b::SubscriberB, s::String) = println("$(b.name) is notified by $(s).")



mutable struct AppleNews <: Newspaper
    subscribers::Vector{Subscriber}
end

AppleNews() = AppleNews(Subscriber[])

subscribe(s::Subscriber, a::AppleNews) = push!(a.subscribers, s)
notify(a::AppleNews) = foreach(x -> update(x, "AppleNews"), a.subscribers)



mutable struct BananaNews <: Newspaper
    subscribers::Set{Subscriber}
end

BananaNews() = BananaNews(Set{Subscriber}())

subscribe(s::Subscriber, b::BananaNews) = union!(b.subscribers, [s])
notify(b::BananaNews) = foreach(x -> update(x, "BananaNews"), b.subscribers)
