class RealItem < Item

  attr_accessor :weight

  show_info_about :weight, lambda { |attr| attr > 10 }

  def initialize(options)
    @weight = options[:weight]
    super(options[:name], options)
  end

  def info
    if block_given?
      if @@show_info_about[:weight].call(weight) ||
          !@@show_info_about[:weight]
        yield weight #if weight > 10
      end
      super
    end
  end

  def to_s
    super + ":#{self.weight if self.respond_to? :weight}"
  end

end
