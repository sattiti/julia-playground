# Regexp
s0  = "hello world"
pat = r"^([a-zA-Z0-9]+)([a-z])"

m = match(pat, s0)

if m === nothing
  println("no matched.")
else
  println("match: $(m.match)")
  println("offset: $(m.offset)")
  println("offsets: $(m.offsets)")
  println("captures: $(m.captures)")
  one, two = m.captures
  println("replace: $(replace())")
end

println("Type: $(typeof(pat))")

# Flag
# i case-sensitive
# m multiple lines
# s single lines
# x allow whitespace and comment.
