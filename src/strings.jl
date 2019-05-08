# Strings
function printTypeof(v)
  println()
  println("Type:  $(typeof(v))")
  println("Value: $(v)")
end

# Char, String {{{
# All string types are subtypes of the abstract type AbstractString.
x = 'x'
y = "y"
printTypeof(x)
printTypeof(y)
println("Char Code 120 is: $(Char(120))")

# 有効な文字コードの確認方法。
println(isvalid(Char, 0x111100))
# }}}
# Triple-Quoted String Literals {{{
s0   = "hello world."
html = """<doctype html>
<html lang=\"ja\">
<head>
<meta charset=\"utf-8\">
<meta name=\"virwport\" content=\"width=device-width\">
<title>$(s0)</title>
</head>
<body>
<h1>$(s0)</h1>
</body>
</html>
"""
println(html)
println("index:      $(html[10])")
println("range:      $(html[10:20])")
println("end:        $(html[end-2])")
println("SubString:  $(SubString(html, 1, 10))")
println("length:     $(length(html))")
println("firstIndex: $(firstindex(html))")
println("lastIndex:  $(lastindex(html))")
# }}}
# Unicode {{{
s1 = "\uffaa"
println(s1)
# }}}
# Concatenation {{{
s2 = "hello"
s3 = "world"
println("string(S1, S2): $(string(s2, " ", s3))")
println("S1 * S2:        $(s2 * " " * s3)")
println("\$S1 \$S2:        $s2 $s3")
#}}}
# Find {{{
s4 = "hello world"
println("findfirst: $(findfirst(isequal('e'), s4))")
println("findlast:  $(findlast(isequal('o'), s4))")
println("findnext:  $(findnext(isequal('o'), s4, 1))")
println("findprev:  $(findprev(isequal('l'), s4, 5))")
println("check if a substring is found within a string:  $(occursin('q', s4))")
println("check if a substring is found within a string:  $(occursin('e', s4))")
println("repeat: $(repeat(s4, 10))")
println("join:   $(join(s4, "="))")
# }}}
# Byte Array Literals {{{
s6 = b"123"
println("Byte Array: $(s6)")

s7 = b"\uff"
println("Byte Array: $(s7)")
# }}}
# Version Literals {{{
s8 = v"0.1.0"
println("Version: $(s8)")
# }}}
# Raw String Literals {{{
s9 = raw"\\\\\\"
println("raw string: $(s9)")
# }}}
