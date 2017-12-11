class RestaurantController < ApplicationController
    def index
        @id = params["id"]
        @restaurant = Yelp.restaurant params["id"]
        @name = @restaurant["name"]
        @reviews = Yelp.review params["id"]
        
        if not @reviews["reviews"].eql? nil
            @reviews["reviews"].each do |rev|
                rev["rating"] = Yelp.rating_html(rev["rating"])
            end
        end
        
        @coupons = Deal.getDealsByID params["id"]
        
    end
end
