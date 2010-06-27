class PromotionsController <  ApplicationController
  
    def index
      @promotions = Promotion.find(:all)
    end

    def new
      @promotion = Promotion.new
      @businesses = BusinessUnit.find(:all)
    end

    def create
      promotion = Promotion.new(params[:promotion])
      if(promotion.save)
        redirect_to :action =>  :index
      end
    end
end
