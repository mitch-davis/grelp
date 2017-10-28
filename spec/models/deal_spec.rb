require 'rails_helper'

RSpec.describe Deal, type: :model do
  describe "near_by_deals" do
     it "should be defined" do
        expect {Deal.near_by_deals}.not_to raise_error
     end
      
     it "returns an array" do
        expect(Deal.near_by_deals).to be_a_kind_of Array
     end
     
     it "encodes each deal as a hash" do
        expect(Deal.near_by_deals.length > 0).to eq(true)
        expect(Deal.near_by_deals[0]).to be_a_kind_of Hash
     end
     
     it "has a restaurant for each deal" do
        Deal.near_by_deals.each do |deal|
            expect(deal[:Restaurant]).to be_a_kind_of String
        end
     end
     
     it "has a coupon description for each deal" do
        Deal.near_by_deals.each do |deal|
            expect(deal[:Value]).to be_a_kind_of String
        end
     end
     
     it "has an offer code for each deal" do
        Deal.near_by_deals.each do |deal|
            expect(deal[:Offer_Code]).to be_a_kind_of String
            expect(deal[:Offer_Code].length).to eq(8) #should be of the form "XXXX-XXX (this form could change in future vers.)"
        end
     end
     
     it "has a restriction for each deal" do
        Deal.near_by_deals.each do |deal|
            expect(deal[:Restrictions]).to be_a_kind_of String
        end
     end
     
     it "has an expiration date for each deal" do
        myTime = Time.new
        Deal.near_by_deals.each do |deal|
            expect(deal[:Exp_Date]).to be_a_kind_of String
            expect(deal[:Exp_Date]).to be < myTime.inspect #expiration date not passed
        end
     end
     
     it "has a valid location for each deal" do
        Deal.near_by_deals.each do |deal|
            expect(deal[:latitude]).to be_a_kind_of String
            expect(deal[:longitude]).to be_a_kind_of String
            #ideally, we want a way to verify these coords are within the user location range
        end
     end
     
   end
end
