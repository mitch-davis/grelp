class RestaurantController < ApplicationController
    def index
        @test = params["id"]
        @restaurant = Yelp.getRestaurantByID params["id"]
        @reviews = Yelp.getReviewByID params["id"]
    end
end
