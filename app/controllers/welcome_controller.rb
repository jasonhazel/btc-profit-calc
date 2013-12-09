class WelcomeController < ApplicationController
  def index
  	@bitcoin = Bitcoin.new(0.061)
  end
end
