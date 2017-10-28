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
     
         
  end
    
  #pending "add some examples to (or delete) #{__FILE__}"
end
