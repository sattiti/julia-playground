# while
i = 0
size = 10

while i < size
  println(i)
  global i = i + 1
end

for j = 0:size
  println(j)
end

for a in [1, 2, 3, 9, 2]
  println(a)
end
