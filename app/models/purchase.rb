class Purchase < ActiveRecord::Base
  attr_accessible :amount, :date, :paid

  def bitcoin
    @bitcoin ||= Bitcoin.new(amount)
  end

  def profit
    bitcoin.to_usd - paid
  end
end
