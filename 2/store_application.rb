class StoreApplication
  class << self
    attr_accessor :name, :environment

    def set
      unless @store
        yield self
        puts 'Loading classes'
        require_relative 'cart'
        require_relative 'item'
        require_relative 'virtual_item'
        require_relative 'real_item'
        require_relative 'item_container'
        require_relative 'order'
        require_relative 'antique_item'
        require_relative 'string'
      end
      @store ||= self
    end

    def admin(&block)
      @admin ||= Admin.new(&block)
    end

    class Admin
      class << self
        attr_accessor :email, :login
        def new
          unless @store
            yield(self)
          end
          @store ||= self
        end
      end
    end
  end
end
