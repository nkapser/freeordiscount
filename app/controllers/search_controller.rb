class SearchController < ApplicationController

  def search
#    Struct.new(:business_name, :category, :location)
    @results = Location.find_all_by_area_and_city(params[:location], params[:city]).first.business_units.map { |business_unit|
      ##(params[:category])
      business_unit.categories.find(params[:category])
    }
  end

end
