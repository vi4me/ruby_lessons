class Item

  attr_reader :real_price
  attr_accessor :name

  @@discount = 0.01

  def initialize(name, options = {})
    @real_price = options[:price]
    @name = name
  end

  def info
    if block_given?
      yield price
      yield name
    else
      p 'Nothing'
    end
  end

  def self.discount
    if Time.now.month == 5
      @@discount + 0.03
    else
      @@discount
    end
  end

  def price
    if @real_price
      (@real_price - @real_price * self.class.discount) + tax
    end
  end

  def to_s
    "#{self.name}:#{self.price}"
  end

  def price=(value)
    real_price = value
  end

  private

  def tax
    type_tax = if self.class == VirtualItem
                  1
                else
                  2
                end
    cost_tax = if @real_price > 5
                  @real_price * 0.2
                else
                  @real_price * 0.1
                end
    cost_tax + type_tax
  end
  # attr_reader :price, :height
  # attr_writer :price


  # def price
  #   @price
  # end
  #
  # def price=(value)
  #   @price = value
  # end
end

# item1 = Item.new({weight: 20, price: 50})
# item2 = Item.new({weight: 30, price: 60})
# item3 = Item.new

# p item1
# p item2
# item1.price = 10
# item2.price = 20
# item3.price = 30
# item1.height = 10
# item2.height = 20
# item3.height = 30
#
# p item1.price
# p item2.price
# p item3.price
# p item1.height
# p item2.height
# p item3.height


# item1 = Item.new
# item2 = Item.new
# item3 = Item.new
# puts item1
# p item2
# p item3
