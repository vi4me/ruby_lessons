multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

print (1..100).to_a.select(&multiples_of_3)

p '-------------------------------------'

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

# Complete this as a new Proc
over_4_feet = Proc.new { |height| height >= 4 }

# Change these three so that they use your new over_4_feet Proc
can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)

puts can_ride_1
puts can_ride_2
puts can_ride_3

p '-------------------------------------'

def greeter
  yield
end
phrase = Proc.new { puts "Hello there!" }
greeter(&phrase)

p '-------------------------------------'

numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.map(&:to_s)

p '-------------------------------------'

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Write your code below this line!

symbolize = lambda { |strings| strings.to_sym }

# Write your code above this line!
symbols = strings.collect(&symbolize)
print symbols

p '-------------------------------------'

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

# Add your code below!
symbol_filter = lambda { |x| x.is_a? Symbol }
symbols = my_array.select(&symbol_filter)
puts symbols

p '-------------------------------------'

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!
first_half = lambda { |key, value| value < "M" }
a_to_m = crew.select(&first_half)
puts a_to_m

p '-------------------------------------'
