require 'rspec'
require_relative '../item_container'
require_relative '../item'

class ItemsContainer
  include ItemContainer

  def initialize
    @items = []
  end
end

describe ItemContainer do
  before(:each) do
    @container = ItemsContainer.new
    @item1 = Item.new('car', price: 300)
    @item2 = Item.new('bike', price: 500)
  end

  it 'add items to container' do
    @container.add_item(@item1, @item2)

    expect(@container.items.size).to eq 2
  end

  it 'remove items from container' do
    @container.add_item(@item1, @item2)
    expect([@container.remove_item]).to include @item2
    # expect([@container.remove_item]).to match_array @item2
    expect(@container.items.size).to eq 1
    @container.remove_item
    expect(@container.items).to be_empty
    expect(@container.items.size).to eq 0
  end
end
