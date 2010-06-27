class HomeController < ApplicationController

  require 'country_select'
  
  def index
    @categories = Category.find(:all)
  end

end
