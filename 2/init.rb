require_relative 'cart'
require_relative 'item'
require_relative 'virtual_item'
require_relative 'real_item'
require_relative 'item_container'
require_relative 'order'
require_relative 'antique_item'
require_relative 'string'

@items = []
# @items << VirtualItem.new({
#                         price: 250,
#                         weight: 300,
#                         name: 'virt'
#                         })
# @items << AntiqueItem.new({
#                         price: 200,
#                         weight: 380,
#                         name: 'ant'
#                         })
@items << RealItem.new({
                        price: 310,
                        weight: 30,
                        name: 'cicle'
                        })
@items << RealItem.new({
                       price: 330,
                       weight: 20,
                       name: 'bike'
                       })
cart = Cart.new('amg')
cart.add_item(RealItem.new({
                        price: 310,
                        weight: 30,
                        name: 'car'
                        }))
cart.add_item(RealItem.new({
                        price: 310,
                        weight: 30,
                        name: 'car'
                        }))
cart.add_item(RealItem.new({
                        price: 310,
                        weight: 30,
                        name: 'bike'
                        }))
# p cart.kind_of? Cart
# p @items.first.kind_of? Item
p @items.first.respond_to? :price
p @items.first.send :tax

# p cart.all_cars
# p cart.all_bikes

# item1 = VirtualItem.new({ price: 225, name: 'Bike'})
# item2 = RealItem.new({ price: 205, weight: 120, name: 'Doll'})
# item3 = VirtualItem.new({ price: 25, weight: 120, name: 'Car'})

# cart = Cart.new
# cart.add_item item1
# cart.add_item item2
# cart.add_item item3
# cart.delete_invalid_items
# cart.validate
# p cart.items.size
# p cart

# order = Order.new
# order.add_item item1
# order.add_item item2
# p order.items.size
# p order.items
# p order.count_valid_items



# p cart.items

# p item2.price
# p item2.real_price

# item.info { |value| puts value }
# item2.info

# cart.add_item(Item.new(price: 200))
# cart.add_item(Item.new)
# cart.validate
# cart.remove_item
#
# p cart
