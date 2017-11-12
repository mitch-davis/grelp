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
