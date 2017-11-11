class Yelp
    require "json"
    require "http"
    require "optparse"
    
    @@CLIENT_ID = "KlCuB5YcLt3UlZuk9e8uRQ"
    @@CLIENT_SECRET = "6J6CPbOkVAabYGfqgDkK4gb4mYhngJaAS5pbzAxT3gHsn8et7xbODCxqFFE59xkM"


    # Constants, do not change these
    @@API_HOST = "https://api.yelp.com"
    @@SEARCH_PATH = "/v3/businesses/search"
    @@BUSINESS_PATH = "/v3/businesses/"  # trailing / because we append the business id to the path
    @@TOKEN_PATH = "/oauth2/token"
    @@GRANT_TYPE = "client_credentials"


    @@DEFAULT_BUSINESS_ID = "yelp-san-francisco"
    @@DEFAULT_TERM = "dinner"
    @@DEFAULT_LOCATION = "San Francisco, CA"
    @@SEARCH_LIMIT = 50
    
    def self.message
        "stub"
    end

    def self.near location
       return search("food",location[:latitude], location[:longitude],true)
    end
    
    def self.attributes
        return ["Restaurants", "Ratings", "Price Range", "Hours of Operations", "Number of Coupons"]
    end
    
    def self.yelp
        return @@CLIENT_ID
    end
    
    def self.bearer_token
        # Put the url together
        url = "#{@@API_HOST}#{@@TOKEN_PATH}"
    
        raise "Please set your CLIENT_ID" if @@CLIENT_ID.nil?
        raise "Please set your CLIENT_SECRET" if @@CLIENT_SECRET.nil?
        
        # Build our params hash
        params = {
            client_id: @@CLIENT_ID,
            client_secret: @@CLIENT_SECRET,
            grant_type: @@GRANT_TYPE
        }
        
        response = HTTP.post(url, params: params)
        parsed = response.parse
        "#{parsed['token_type']} #{parsed['access_token']}"
    end
    
    def self.search(term, latitude, longitude, open_now)
        url = "#{@@API_HOST}#{@@SEARCH_PATH}"
        params = {
            open_now:open_now,
            term: term,
            latitude: latitude,
            longitude: longitude,
            limit: @@SEARCH_LIMIT
        }
        response = HTTP.auth(Yelp.bearer_token).get(url, params: params)
        response.parse
    end
    
    #generates the HTML for star icons based off of rating numeric
    def self.genRatingHTML rating
        @ratingHTML = ""
        @ratingInt = rating.floor
        i = 0
        while i < @ratingInt  do #full star
           @ratingHTML += "<span class=&quot;fa fa-star checked&quot;></span> "
           i +=1
        end
        if @ratingInt < rating #half star
            @ratingHTML += "<span class=&quot;fa fa-star-half checked&quot;></span>"
        end
        return @ratingHTML
    end
    
end