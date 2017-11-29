class RestaurantController < ApplicationController
    def index
        @id = params["id"]
        @restaurant = Yelp.getRestaurantByID params["id"]
        @name = @restaurant["name"]
        @reviews = Yelp.getReviewByID params["id"]
        
        if not @reviews["reviews"].eql? nil
            @reviews["reviews"].each do |rev|
                rev["rating"] = Yelp.genRatingHTML(rev["rating"])
            end
        end
        
        @coupons = Deal.getDealsByID params["id"]
        
    end
end
