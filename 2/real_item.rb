class RealItem < Item

  attr_accessor :weight

  def initialize(options)
    @weight = options[:weight]
    super
  end

  def info
    if block_given?
      yield weight
      super
    else
      p 'Nothing'
    end
  end
end
