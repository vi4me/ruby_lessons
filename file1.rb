# puts "Hello World".class
# puts 1.class
# puts 2 + 1
# puts "2" + "1"

# name = "Vi"
# puts "My name is " + name

# eq1 = 2 <= 2
# eq2 = 2 >= 2
# puts "#{eq1}" + " #{eq2}"

# puts false && true
# puts false && false
# puts true && true
# puts true && false
# puts "---------"
# puts false || true
# puts false || false
# puts true || true
# puts true || false

# puts 'yes' unless 2 < 1
# puts 'yes' if 2 < 1

# if 2 > 1
#   puts 'yes'
# else
#   puts 'no'
# end

# name = "Masha"
# if name == "Masha" || 1 > 2 && name != "Dasha"
#   puts "My nane is " + name
# end

# i = 1
# while i < 5
#   i += 1
#   puts "i var is " + i.to_s
#   puts "i var is " + "#{i}"
# end
# -----------------------------------------
# def division
#   puts "hello"
# end
#
# def division_2(name)
#   puts "My nane is " + name
# end
#
# def division_3
#   name = "Dasha"
#   division
#   division_2(name)
# end
# division_3

# ------------------------------------

# def division(name = "", age = nil, weight = 70)
#   puts "My name is " + name
#   puts "My age is " + age.to_s
#   puts "My weight is " + "#{weight}"
#   puts "------------"
# end
# division("Dasha", 55)
# division("Pasha", 28, 59)
# division
# -----------------------------------
def division(name = "", age = nil, weight = 70)
  var = " hello"
  if name != "Dasha" && age == nil
    var += " world"
  end
  return var
end
puts division("Masha")
puts division("Dasha")
puts division("Pasha", 28, 59)
