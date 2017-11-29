class YelpController < ApplicationController
  def index
    @businesses = Yelp.near @location
    
    if params.key? "sort"
      case params["sort"]
      
      #BY NAME ----------------------------------------------------------------------------
      when "restaurantA"
        @businesses["businesses"] = @businesses["businesses"].sort_by{ |k| k["name"] } #A-Z
      when "restaurantZ"
        @businesses["businesses"] = @businesses["businesses"].sort_by{ |k| k["name"] }.reverse #Z-A
        
      #BY RATING --------------------------------------------------------------------------  
      when "ratingMax"
        @businesses["businesses"] = @businesses["businesses"].sort_by{ |k| k["rating"] }.reverse #higher ratings first
      when "ratingMin"
        @businesses["businesses"] = @businesses["businesses"].sort_by{ |k| k["rating"] } #lower ratings first
      
      #BY PRICE ---------------------------------------------------------------------------
      
      when "priceMin"
        @businesses["businesses"] = @businesses["businesses"].sort_by{ |k| k["price"].to_s } #lowest price first
      when "priceMax"
        @businesses["businesses"] = @businesses["businesses"].sort_by{ |k| k["price"].to_s }.reverse #highest price first
      
      #BY NUMDEALS ------------------------------------------------------------------------
      
      when "numMin"
        @businesses["businesses"] = @businesses["businesses"].sort_by{ |k| k["numDeals"].to_s } #lowest price first
      when "numMax"
        @businesses["businesses"] = @businesses["businesses"].sort_by{ |k| k["numDeals"].to_s }.reverse #highest price first
      end
      
    end
      

    @attributes = Yelp.attributes
    @businesses["businesses"].each do |item|
      item["ratingNum"] = item["rating"]
      item["rating"] = Yelp.rating_html item["rating"] #convert rating float to HTML for star icons
      item["numDeals"] = Deal.where(:ID => item["id"]).length
    end
  end
end




#ensures that you have a client ID and Client Secret which allows access to the yelp API