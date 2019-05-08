# Types

function printTypeInfo(v)
  println()
  println("Type:   $(typeof(v))")
  println("Value:  $(v)")
  println("sizeof: $(sizeof(v))")
  println("Isa:    $(v isa typeof(v))")
end

# To comfirm the target system has a 32bit | 64bit architecture. {{{
println("Sys Architecture: $(Sys.WORD_SIZE) bit")
println(Int)
println(UInt)
# }}}
# bit 数 {{{
println(sizeof(100_000_000))
# }}}
# The minimum and maximum representable values {{{
for t in [Int8, Int16, Int32, Int64, Int128, UInt8, UInt16, UInt32, UInt64, UInt128, Float16, Float32, Float64]
  # 左右寄り文字成型
  # lpad(value, size)
  # rpad(value, size)
  println("$(lpad(t, 7)): [$(typemin(t)), $(typemax(t))]")
end
# }}}

# Integers {{{
# | Int  | Int8  | Int16  | Int32  | Int64  | Int128  | BigInt |
# | UInt | UInt8 | UInt16 | UInt32 | UInt64 | UInt128 |        |

i0 = 1
printTypeInfo(i0)

i1 = 0b10101010
printTypeInfo(i1)

i2 = 0o0777
printTypeInfo(i2)

i3 = 0xffddaa
printTypeInfo(i3)
# }}}
# Boolean {{{
# | typeof | sizeof | typemin  | typemax |
# | Bool   | 8bit   | false(0) | true(1) |
b0 = true
b1 = false
printTypeInfo(b0)
printTypeInfo(b1)
# }}}
# Float {{{
# | Float16 | Float32 | Float64 | BigFloat |                   |
# | Inf16   | Inf32   | Inf     |          | Positive Infinity |
# | -Inf16  | -Inf32  | -Inf    |          | Negative Infinity |
# | NaN16   | NaN32   | NaN     |          | Not a number      |

f0 = 1.0
printTypeInfo(f0)

# Float64
f1 = 2e10
printTypeInfo(f1)

# e の代わりに f を書くことで、Float32 リテラル値を入力できる。
f2 = 2f10
printTypeInfo(f2)
printTypeInfo(Float32(f1))

# hex -> float
f3 = 0xff.2p3
printTypeInfo(f3)

f4 = 0x.4p-1
printTypeInfo(f4)

# bitstring function
f5 = 0.0
println(bitstring(f5))

f6 = -0.0
println(bitstring(f6))

println(eps(Float16))
println(eps(Float32))
# same as eps(Float64)
println(eps())

# nextfloat, prevfloat
f7 = 1.0e0
printTypeInfo(f7)
println("prevfloat: $(prevfloat(f7))")
println("nextfloat: $(nextfloat(f7))")
# }}}
