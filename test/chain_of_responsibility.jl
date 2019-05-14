@info "Test chain of responsibility pattern..."

bank = Bank(100)
paypal = Paypal(300)
bitcoin = Bitcoin(1000)

bank.successor = paypal
paypal.successor = bitcoin

pay(bank, 500)

println(bank.balance)
println(paypal.balance)
println(bitcoin.balance)
