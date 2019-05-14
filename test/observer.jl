@info "Test observer pattern..."

a = AppleNews()
b = BananaNews()
suba = SubscriberA("Joe")
subb = SubscriberB("Kay")
subscribe(suba, a)
subscribe(subb, a)
subscribe(suba, b)
subscribe(subb, b)

notify(a)
notify(b)
