"""
The concept is that, I want to use my account to pay for something.
I can just pick one for payment. If the balance is less than the payment, it will switch to next one.
If the handler cannot deal with the event or the responsibility, the handler dispatch to the next.
"""

abstract type Account end
struct NullAccount <: Account end
can_pay(acc::Account, amount) = acc.balance >= amount

function pay(acc::Account, amount)
    if can_pay(acc, amount)
        acc.balance -= amount
    else
        pay(acc.successor, amount)
    end
end



mutable struct Bank <: Account
    balance::Float64
    successor::Account
end
Bank(balance) = Bank(balance, NullAccount())


mutable struct Paypal <: Account
    balance::Float64
    successor::Account
end
Paypal(balance) = Paypal(balance, NullAccount())



mutable struct Bitcoin <: Account
    balance::Float64
    successor::Account
end
Bitcoin(balance) = Bitcoin(balance, NullAccount())
