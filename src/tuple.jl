# Tuple
# A tuple is a fixed-length container that can hold any values.
# Tuple is immutable, it cannot be modified.

# Basic {{{
a = (1, 2, "abc", 1.2, 'c')
println("value:       $a")
println("first index: $(a[1])")
println("length:      $(length(a))")
println("type:        $(typeof(a))")
#}}}
# Named Tuples{{{
b = (name="john", age=12, email="john@example.com")
println("name: $(b.name)")
# }}}
