# Do-blocks
a = map([1, 2, 3, 4, 5]) do x
  x + 1
end

println(a)


function b(block::Function, x, y)
  println("start")
  z = 10
  block(x, y, z)
  println("end")
end

b(20, 20) do x, y, z
  println(z)
  println(x + y)
end
