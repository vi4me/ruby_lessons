def puts_id_of_obj(obj)
  puts "Id of object is: #{obj.object_id}"
end

class F
  def puts_my_id
    puts_id_of_obj self
  end
end
F.new.puts_my_id

p '-----------------'

def times_two
  yield
end
times_two { p 'test'}
times_two =->(n) {n*2}
p 1.yield_self(&times_two)
p times_two.(1)
