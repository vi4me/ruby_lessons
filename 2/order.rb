require_relative 'item_container'

class Order
  include ItemContainer
  attr_reader :items
  attr_accessor :placed_at, :end_sending

  def initialize
    @items = []
  end

  def place
    @placed_at = Time.now
    thread = Thread.new do
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
        subject: "New order was added to your mail",
        body: "Check your message"
      })
    end
    start = 0
    while thread.alive?
      start += 1
      puts '...' + start.to_s
      sleep 0.5
    end
    start_sending = Time.now
    @end_sending = start_sending - @placed_at
  end
end
