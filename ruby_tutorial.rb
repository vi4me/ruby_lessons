class RubyTutorial

  def self.description
    a,b,c = 1,2,3
    d = a ? b : c
    # p d
    # for i in 0..3
    #   p i
    # end
    # for i in 0...3
    #   p i
    # end
    p '----------------------'
    array = %w[Dasha Masha Pasha]
    array.map { |i| p i}
    array.map(&method(:p))
    p array.find_index("Masha")
    array = [1, 2, 3, nil]
    array.find_all { |num| p num.odd? unless num.nil?}
    p '----------------------'
    array.find_all { |num| p num.even? unless num.nil?}

    p '----------------------'
    # p "kkkk".methods
    # p 'Dasha Masha Pasha'.chars
    p 'Dasha Masha Pasha'.split
    p '----------------------'
    [['audi', 'black', 2008], ['bmw', 'red', 2011]].each do |mark, color, year|
      puts "mark: #{mark}, color: #{color}, year: #{year}"
    end
    hash = {car: 'audi', color: 'black', year: 2008}
    p hash.keys
    p hash.sort

  end
end
RubyTutorial.description
