class RestaurantController < ApplicationController
    def index
        @test = params["id"]
        @restaurant = Yelp.getRestaurantByID params["id"]
        @reviews = Yelp.getReviewByID params["id"]
        
        @reviews["reviews"].each do |rev|
            rev["rating"] = Yelp.genRatingHTML(rev["rating"])
        end
        
        @coupons = Deal.getDealsByID params["id"]
        
    end
end
