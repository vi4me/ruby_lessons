class String

  def to_real_item
    fields = self.chomp
    fields = self.split(':')
    RealItem.new(name: fields[0],
                 price: fields[1],
                 weight: fields[2]
                 )
  end
end
