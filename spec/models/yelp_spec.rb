require 'rails_helper'

RSpec.describe Yelp, type: :model do
  describe "genRatingHTML" do
        it "should return a string" do
            expect(Yelp.genRatingHTML(5)).to be_a_kind_of String
            expect(Yelp.genRatingHTML(2.5)).to be_a_kind_of String
            expect(Yelp.genRatingHTML(-1)).to be_a_kind_of String #empty string
            expect(Yelp.genRatingHTML(33)).to be_a_kind_of String #empty string
        end
        
        it "should return HTML to generate star symbols" do
            expect(Yelp.genRatingHTML(5).include? "<span class=&quot;fa fa-star").to eq true
            expect(Yelp.genRatingHTML(5).include? "></span>").to eq true
            expect(Yelp.genRatingHTML(1).include? "<span class=&quot;fa fa-star").to eq true
            expect(Yelp.genRatingHTML(1).include? "></span>").to eq true
        end
        
        it "gives accurate results" do 
            expect(Yelp.genRatingHTML(1)).to eq "<span class=&quot;fa fa-star checked&quot;></span> "
            expect(Yelp.genRatingHTML(1.5)).to eq "<span class=&quot;fa fa-star checked&quot;></span> <span class=&quot;fa fa-star-half checked&quot;></span>"
            expect(Yelp.genRatingHTML(-1)).to eq ""
        end
  end
  
  describe "getRestaurantByID" do
      it "should return a restaurant" do
          expect(Yelp.getRestaurantByID("719-gastropub-colorado-springs-2")).to be_a_kind_of Hash
          expect(Yelp.getRestaurantByID("719-gastropub-colorado-springs-2")["name"]).to be_a_kind_of String
      end
      
      it "should return the correct restaurant" do
          expect(Yelp.getRestaurantByID("719-gastropub-colorado-springs-2")["name"]).to eq "719 Gastropub"
      end
  end
  
  describe "getReviewByID" do
      it "should return a review" do
          expect(Yelp.getReviewByID("719-gastropub-colorado-springs-2")).to be_a_kind_of Hash
          expect(Yelp.getReviewByID("719-gastropub-colorado-springs-2")["reviews"]).to be_a_kind_of Array
      end
  end
end
