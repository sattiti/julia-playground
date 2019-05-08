# Arithmetic Operators {{{
# | Expression | Name           | Description                           |
# | +x         | unary plus     |                                       |
# | -x         | unary minus    |                                       |
# | x + y      | binary plus    |                                       |
# | x - y      | binary minus   |                                       |
# | x * y      | times          |                                       |
# | x / y      | divide         |                                       |
# | x ÷ y      | integer divide | same as x / y truncated to an Integer |
# | x \ y      | inverse divide | equivalent to y / x                   |
# | x ^ y      | power          |                                       |
# | x % y      | remainder      | equivalent to rem(x, y)               |
# | !x         | negation       |                                       |
# }}}
# Bitwize Operators {{{
# | Expression | Name                          |
# | ~x         | bitwize not                   |
# | x & y      | bitwize and                   |
# | x | y      | bitwize or                    |
# | xor(x, y)  | bitwize xor (exclusive or)    |
# | x >>> y    | logical shift right           |
# | x >> y     | arithmetic shift right        |
# | x << y     | logical/arithmetic shift left |
# }}}
# dot operators {{{
# same as [1^2, 2^2, 3^2]
println([1, 2, 3].^2)
# }}}
# Numeric Comparisions {{{
# | Operator | Name             |
# | ==       | equality         |
# | !=       | inequality       |
# | <        | less than        |
# | <=       | less than equal  |
# | >        | great then       |
# | >=       | great then equal |
x = 1
y = 2
z = "1"
println("x: $(x), y: $(y)")
println("x and y are idential: $(isequal(x, y))")
println("x is a finite number: $(isfinite(x))")
println("x is infinite:        $(isinf(x))")
println("x is not a number:    $(isnan(x))")
println(x == z)
println(isequal(x, z))
# }}}
