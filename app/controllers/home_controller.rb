class HomeController < ApplicationController
  def index
    @registration = Registration.new food: 0
  end
end
