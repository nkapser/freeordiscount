class BusinessUnitsController < ApplicationController

  def index
    @business_units = BusinessUnit.find(:all)
  end
  
  def new
    @business_unit = BusinessUnit.new
    @business_unit.location = Location.new
    @categories = Category.find(:all)
  end

  def create
    params[:business_unit][:category_ids] ||= []
    @business_unit = BusinessUnit.new(params[:business_unit])
    if @business_unit.save
      redirect_to :action => :index
  else
    render :action => :new
        end
  end


end
