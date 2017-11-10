class YelpController < ApplicationController
  def index
    @businesses = Business.near @location
    @count = @businesses.count
    @attributes = Business.attributes
    @businesses["businesses"].each do |item|
      item["ratingNum"] = item["rating"]
      item["rating"] = Business.genRatingHTML item["rating"] #convert rating float to HTML for star icons
    end
  end
end




#ensures that you have a client ID and Client Secret which allows access to the yelp API