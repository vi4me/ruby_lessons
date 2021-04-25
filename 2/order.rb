require_relative 'item_container'

class Order
  include ItemContainer
  attr_reader :items

  def initialize
    @items = []
  end

  def place
    Pony.mail({
      :to => StoreApplication::Admin.email,
      :via => :smtp,
      :via_options => {
        :address        => "smtp.gmail.com",
        :port           => 587,
        :enable_starttls_auto => true,
        :user_name      => StoreApplication::Admin.email,
        :password       => StoreApplication::Admin.pass,
        :domain         => "gmail.com", # the HELO domain provided by the client to the server
        :authentication => :plain, # :plain, :login, :cram_md5, no auth by default
      },
      subject: "New order was added",
      body: "Check you account"
    })
  end
end
