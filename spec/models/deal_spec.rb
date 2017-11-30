require 'rails_helper'

RSpec.describe Deal, type: :model do
  describe "deals id" do
      it "should return a deal" do
          expect((Deal.getDealsByID "walters-303-pizzaria-and-publik-house-colorado-springs") == nil).to eq nil
      end
  end
  describe "randomCode" do
      it "should return a code" do
          expect(Deal.randomCode).to be_a_kind_of String
      end
      it "should return unique code" do
          expect(Deal.randomCode == Deal.randomCode).to eql false
      end
  end
end