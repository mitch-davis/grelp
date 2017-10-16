class YelpController < ApplicationController
  def index
    @businesses = Yelp.near
  end
end




#ensures that you have a client ID and Client Secret which allows access to the yelp API



  

