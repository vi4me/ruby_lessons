class Order
  require_relative 'item_container'
  include ItemContainer

  attr_reader :items

  def initialize
    @items = []
  end

end
