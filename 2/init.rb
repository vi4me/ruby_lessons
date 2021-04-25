require_relative "store_application"
StoreApplication.set do |app|
  app.name = 'Ruby App'
  app.environment = :development
  app.admin do |admin|
    admin.email = 'admin@mail.com'
    admin.login = 'admin'
  end
end

p StoreApplication.environment
p StoreApplication.name
p StoreApplication.admin.email


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
# @items << VirtualItem.new('cicle', price: 310, weight: 30)
# @items << AntiqueItem.new('bike', price: 330, weight: 20)
@items << RealItem.new(name: 'car', price: 300, weight: 330)
@items << RealItem.new(name: 'doll', price: 360, weight: 430)


cart = Cart.new('amg')
cart.add_item(RealItem.new({
                        price: 310,
                        weight: 30,
                        name: 'car'
                        }))
cart.add_item(RealItem.new({
                        price: 610,
                        weight: 30,
                        name: 'car'
                        }))
cart.add_item(RealItem.new({
                        price: 510,
                        weight: 30,
                        name: 'bike'
                        }))
p cart.send :all_cars
# p cart.kind_of? Cart
# p @items.first.kind_of? Item
# p @items.first.respond_to? :price
# p @items.first.send :tax

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
