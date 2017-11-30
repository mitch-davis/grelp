require 'rails_helper'

RSpec.describe Yelp, type: :model do
  describe "message" do
    it "should return stub" do
      expect(Yelp.message).to eql "stub"
    end
  end
  
  describe "near" do
      it "should return some restaurants" do
          expect(Yelp.near({:latitude => 40, :longitude => -104})["businesses"]).to be_a_kind_of Array
      end
  end
  
  describe "attributes" do
      it "should return the right attributes" do
          expect(Yelp.attributes).to eql ["Restaurants", "Ratings", "Price Range", "Hours of Operations", "Number of Coupons"]
      end
  end
  
  describe "yelp" do
      it "should give the right yelp encrypt" do
          expect(Yelp.yelp).to eql "KlCuB5YcLt3UlZuk9e8uRQ"
      end
  end
  
  describe "bearer_token" do
      it "should return the right token" do
          expect(Yelp.bearer_token).to eql "Bearer gdBDt5496apNKcr4UtKDMdqrICrMvnr7NfFW-tneaoHNNn9h3io8YPm6ft62lajxZwe7VQF5QeqMLg4be_yz4N1X3R2_9FI6GnFKbVEve7ZhDQQDjz3e61RIm8LhWXYx"
      end
  end
  
  describe "search" do
      it "should return a list of restaurants" do
          expect(Yelp.search("food", 40, -105)["businesses"]).to be_a_kind_of Array
      end
  end
  
  describe "genRatingHTML" do
        it "should return a string" do
            expect(Yelp.rating_html(5)).to be_a_kind_of String
            expect(Yelp.rating_html(2.5)).to be_a_kind_of String
            expect(Yelp.rating_html(-1)).to be_a_kind_of String #empty string
            expect(Yelp.rating_html(33)).to be_a_kind_of String #empty string
        end
        
        it "should return HTML to generate star symbols" do
            expect(Yelp.rating_html(5).include? "<span class=&quot;fa fa-star").to eq true
            expect(Yelp.rating_html(5).include? "></span>").to eq true
            expect(Yelp.rating_html(1).include? "<span class=&quot;fa fa-star").to eq true
            expect(Yelp.rating_html(1).include? "></span>").to eq true
        end
        
        it "gives accurate results" do 
            expect(Yelp.rating_html(1)).to eq "<span class=&quot;fa fa-star checked&quot;></span> "
            expect(Yelp.rating_html(1.5)).to eq "<span class=&quot;fa fa-star checked&quot;></span> <span class=&quot;fa fa-star-half checked&quot;></span>"
            expect(Yelp.rating_html(-1)).to eq ""
        end
  end
  
  describe "getRestaurantByID" do
      it "should return a restaurant" do
          expect(Yelp.restaurant("719-gastropub-colorado-springs-2")).to be_a_kind_of Hash
          expect(Yelp.restaurant("719-gastropub-colorado-springs-2")["name"]).to be_a_kind_of String
      end
      
      it "should return the correct restaurant" do
          expect(Yelp.restaurant("719-gastropub-colorado-springs-2")["name"]).to eq "719 Gastropub"
      end
  end
  
  describe "getReviewByID" do
      it "should return a review" do
          expect(Yelp.review("719-gastropub-colorado-springs-2")).to be_a_kind_of Hash
          expect(Yelp.review("719-gastropub-colorado-springs-2")["reviews"]).to be_a_kind_of Array
      end
  end
end
