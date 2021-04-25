require_relative 'item_container'
require_relative 'item_not_supported'
require_relative 'antique_item'
require_relative 'virtual_item'

class Cart
  include ItemContainer

  attr_reader :items

  UNSUPPORTED_ITEMS = [VirtualItem, AntiqueItem]

  def initialize(owner)
    @items = []
    @owner = owner
  end

  def save_to_file
    File.open(@owner.to_s + '_cart.txt', 'w') do |f|
      @items.each do |i|
        raise ItemNotSupported if UNSUPPORTED_ITEMS.include? i.class
        f.puts i
      end
    end
  end

  def read_from_file
    return unless File.exist? (@owner.to_s + '_cart.txt')

    File.readlines(@owner.to_s + '_cart.txt')
      .each { |i| @items << i.to_real_item }

    @items.uniq!
  end
end
