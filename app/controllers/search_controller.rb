class SearchController < ApplicationController

  def search
#    Struct.new(:business_name, :category, :location)
    @results = Location.fetch_all_promotions(params[:location], params[:city],params[:category])    
  end

end
