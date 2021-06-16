dasha = {name: 'Dasha', age: 21}
masha = {name: 'Masha', age: 22}
p dasha
p masha[:name]
p '-------------------'
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Add your code below!
symbols = []
strings.each do |s|
  symbols.push(s.to_sym)
end
print symbols

p '-------------------'

p "hello".intern

p '-------------------'

grades = { alice: 100,
  bob: 92,
  chris: 95,
  dave: 97
}

p grades.select { |name, grade| grade <  97 }
# ==> { :bob => 92, :chris => 95 }

p grades.select { |k, v| k == :alice }
# ==> { :alice => 100 }

p '-------------------'

my_hash = { one: 1, two: 2, three: 3 }

my_hash.each_key { |k| print k, ", " }
# ==> one two three

my_hash.each_value { |v| print v, ", " }
# ==> 1 2 3
