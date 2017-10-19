class YelpController < ApplicationController
  def index
    @businesses = Business.near request.location
    @count = @businesses.count
  end
end




#ensures that you have a client ID and Client Secret which allows access to the yelp API