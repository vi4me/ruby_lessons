require 'rspec'
require_relative '../item'
require_relative '../virtual_item'

describe Item do

  before(:each) do
    @item = Item.new('car', price: 300)
  end

  # before(:all){}
  # after(:all){}
  # after(:each){}

  it 'calculates correctly price' do
    expect(@item.price).to be 359.0
  end

  it 'returns correctly info about object' do
    expect(@item.to_s).to include('car:359.0')
  end
end
