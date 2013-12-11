class ApplicationController < ActionController::Base
  protect_from_forgery

  def ticker
    render partial: 'welcome/ticker'
  end

  def update
    @purchases = Purchase.all
    @current_btc = Bitcoin.new(@purchases.to_a.sum(&:amount))

    render partial: 'purchases/table'
  end

end
