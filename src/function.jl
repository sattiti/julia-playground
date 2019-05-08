# Function
# Basic {{{
function f0(x::Int8, y::Int8=Int8(10); width::Int8=Int8(10))::Int8
  println("width: $width")
  return x + y
end

f1(x, y) = x + y

println(f0(Int8(1)))
println(f0(Int8(1), Int8(2)))
println(f0(Int8(2), width=Int8(22)))
println(f1(1, 2))

f2 = +
println(f2(1, 2, 3))
# }}}
# Operators With Special Names {{{
# | Expression      | Calls        |
# | [a b c ...]     | hcat         |
# | [a; b; c; ...]  | vcat         |
# | [a b; c d; ...] | hvcat        |
# | A'              | adjoint      |
# | A[i]            | getindex     |
# | A[i] = x        | setindex!    |
# | A.n             | getproperty  |
# | A.n = x         | setproperty! |
# }}}
# Anonymous Functions {{{
println(((x, y) -> x + y)(4, 5))

println((function(x, y)
  x + y
end)(3, 2))

# map
println(map((x)->x+1, [1, 2, 3, 4, 5]))
# }}}
# Multiple Return Values {{{
a, b = (function(x, y)
  x + y, x - y
end)(1, 2)
println("a: $a")
println("b: $b")
# }}}
# Argument destructuring{{{
minmax(x, y) = (y < x) ? (y, x) : (x, y)
range((min, max)) = max - min
println(range(minmax(19, 2)))
# }}}
# Varargs functions {{{
function f3(args...)
  println(args)
end

f3(1, 2, 3, 4, 5, 6, 'a')
# }}}
# Keywords arguments{{{
function f5(;width=0, height=1)
  (width * height) * .5
end
println(f5(width=20, height=2))

function f6(;kwargs...)
  println(kwargs)
end

f6(a=1, b=2, c=3)
# }}}
# Vectorizing Functions{{{
# f can be applied elementwise to any array (or other collection) with the syntax f.(A).
# 配列メンバーに適応することができる。map と似ている。
function f(x)
  x +1
end
a1 = [1, 2, 3, 4, 5]
println(f.(a1))
# }}}
