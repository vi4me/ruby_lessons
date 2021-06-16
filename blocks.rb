# array = %w[Dasha Masha Pasha]

hash = { name: 'Dasha', age: 21, height: 175}
hash.each_key {|i| puts i}
hash.each_value {|v| puts v}

p '-----------------------'

hash.each_with_index { |value, index| puts value}

# File.open("hash.txt", "w") { |y| y.puts "HELLO"}
# array.each { |name| puts name}
# array.each do |name|
#   if name == 'Masha'
#     array.push 'Sasha'
#   end
#   puts name
# end
# 5.times { puts 'Hello'}

p '-----------------------'

def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }

p '-----------------------'
