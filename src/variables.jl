# Variables {{{
x = 10
println(x)

x = "Hello world!"
println(x)
# }}}
# global {{{
y = 0
while y < 10
  println(y)
  global y = y + 1
end
# }}}
# const{{{
const msg = "Hello world."
println(msg)
# }}}
# let block{{{
j = 1
let i = 1
  i = i + 10
  println(i + j)
end
# }}}
