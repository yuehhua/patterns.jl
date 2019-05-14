@info "Test composite pattern..."

pic = Picture()
add!(pic, Line(5.0))
add!(pic, Text_("ABC"))
add!(pic, Circle(5.0))
draw(pic)

pic2 = Picture()
add!(pic2, Text_("DEF"))
add!(pic2, pic)
draw(pic2)
