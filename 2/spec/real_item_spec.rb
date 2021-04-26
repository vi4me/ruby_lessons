require 'rspec'
require_relative '../virtual_item'
require_relative '../real_item'

describe RealItem do
  context 'when return info about' do
    before(:each) do
      @item1 = RealItem.new(name: 'car', price: 300, weight: 5)
      @item2 = RealItem.new(name: 'bike', price: 500, weight: 25)
    end

    it 'return weight if conditional is true' do
      item_info1 = []
      item_info2 = []

      @item1.info { |attr| item_info1 << attr}
      @item2.info { |attr| item_info2 << attr}

      expect(item_info1.join(', ')).to include('359.0, car')
      expect(item_info2.join(', ')).to include('25, 597.0, bike')
    end
  end
end
