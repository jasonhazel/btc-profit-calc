class Denomination < ActiveRecord::Base

  attr_accessible :name, :symbol, :value

  BTC   = 1
  MBTC  = 2
  UBTC  = 3
  USD   = 4

  def value
    return self[:value] unless id == USD
    self.class.bitstamp
  end

  class << self
    
    def bitstamp
      Rails.cache.fetch("bitstamp_cache", expires_in: 5.seconds) do
        Bitstamp::Ticker.last.to_f
      end
    end

    def method_missing(method, *args)
      type = "Denomination::#{method.to_s.upcase}"
      if defined?(type)
        find(type.constantize)
      else
        super
      end
    end
  end

end
