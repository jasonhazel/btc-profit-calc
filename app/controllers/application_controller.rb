class ApplicationController < ActionController::Base
  protect_from_forgery


  def ticker
    render partial: 'welcome/ticker'
  end

end
