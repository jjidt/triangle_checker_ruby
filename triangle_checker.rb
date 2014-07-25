require "./lib/triangles"

puts "Eager to know what kind of triangle you have?"
puts "Enter the length of a side"
sidea = gets.chomp.to_f
puts "Enter the length of the second side"
sideb = gets.chomp.to_f
puts "Enter the length of the third side"
sidec = gets.chomp.to_f
your_Triangle = Triangle.new(sidea, sideb, sidec)

def dots(num)
  num.to_i.times do
  print "."
  sleep(0.3)
  end
end

print "Working"
dots(sidea)
print "this is a really tough one"
dots(sideb)
print "Analyzing"
dots(sidec)

puts "\nThat's not a real triangle. Stop playin and get a triangle that actually exists!" if !your_Triangle.is_triangle?
puts "\nYou've got a #{your_Triangle.type} triangle on your hands!" if your_Triangle.is_triangle?
exit
