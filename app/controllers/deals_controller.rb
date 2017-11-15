class DealsController < ApplicationController
  def deal_params
    params.require(:deal).permit(:Restaurant, :deal_title, :Offer_Code, :lat, :long, :Exp_Date, :Description, :Restrictions)
  end
  
  def show
      id = params[:id] # retrieve movie ID from URI route
      @deal = Deal.find(id) # look up movie by unique ID
      # will render app/views/movies/show.<extension> by default
  end
  
  def index
        @deals = Deal.all
        @deals 
        @all_cuisines = Deal.get_cuisines
        
        if params.key? "sort_by"
          case params["sort_by"]
            when "RestaurantA"
              @deals = @deals.order(:Restaurant)
            when "RestaurantZ"
              @deals = @deals.order(:Restaurant).reverse
            when "Offer_CodeA"
              @deals = @deals.order(:deal_title)
            when "Offer_CodeZ"
              @deals = @deals.order(:deal_title).reverse
            when "Deal_codeA"
              @deals = @deals.order(:Offer_Code)
            when "Deal_codeZ"
              @deals = @deals.order(:Offer_Code).reverse
            when "Exp_TypeShort"
              @deals = @deals.order(:Exp_Date)
            when "Exp_DateLong"
              @deals = @deals.order(:Exp_Date).reverse
          end
        end
        
  end
    
  def create
    @deal = Deal.create!(deal_params)
    flash[:notice] = "#{@deal.Restaurant}, #{@deal.deal_title} was successfully created."
    redirect_to deals_path
  end
  
  def update
    @deal = Deal.find params[:id]
    @deal.update_attributes!(deal_params)
    flash[:notice] = "#{@deal.title} was successfully updated."
    redirect_to deal_path(@deal)
  end
  
   def new
    # default: render 'new' template
    
  end
end
