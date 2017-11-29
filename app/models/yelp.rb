#Handles service calls to Yelp Fusion API
class Yelp
    require "json"
    require "http"
    require "optparse"

    #@@CLIENT_ID = "KlCuB5YcLt3UlZuk9e8uRQ"
    #@@CLIENT_SECRET = "6J6CPbOkVAabYGfqgDkK4gb4mYhngJaAS5pbzAxT3gHsn8et7xbODCxqFFE59xkM"


    # Constants, do not change these
    #@@API_HOST = "https://api.yelp.com"
    #@@SEARCH_PATH = "/v3/businesses/search"
    #@@BUSINESS_PATH = "/v3/businesses/"  # trailing / because we append the business id to the path
    #@@TOKEN_PATH = "/oauth2/token"
    #@@GRANT_TYPE = "client_credentials"


    #@@DEFAULT_BUSINESS_ID = "yelp-san-francisco"
    #@@DEFAULT_TERM = "dinner"
    #@@DEFAULT_LOCATION = "San Francisco, CA"
    #@@SEARCH_LIMIT = 50

    def self.message
        "stub"
    end

    def self.near location
         return search("food",location[:latitude], location[:longitude])
    end

    def self.attributes
        return ["Restaurants", "Ratings", "Price Range", "Hours of Operations", "Number of Coupons"]
    end

    def self.yelp
        return "KlCuB5YcLt3UlZuk9e8uRQ"
    end

    def self.restaurant id
        url = "https://api.yelp.com/v3/businesses/" + id
        params = {

        }

        response = HTTP.auth(Yelp.bearer_token).get(url, params: params)
        response.parse
    end

    def self.review id

        url = "https://api.yelp.com/v3/businesses/" + id + "/reviews"
        params = {

        }

        response = HTTP.auth(Yelp.bearer_token).get(url, params: params)
        response.parse

    end

    def self.bearer_token
        # Put the url together
        url = "https://api.yelp.com/oauth2/token"

        #raise "Please set your CLIENT_ID" if @CLIENT_ID.nil?
        #raise "Please set your CLIENT_SECRET" if @CLIENT_SECRET.nil?

        # Build our params hash
        params = {
            client_id: "KlCuB5YcLt3UlZuk9e8uRQ",
            client_secret: "6J6CPbOkVAabYGfqgDkK4gb4mYhngJaAS5pbzAxT3gHsn8et7xbODCxqFFE59xkM",
            grant_type: "client_credentials"
        }

        response = HTTP.post(url, params: params)
        parsed = response.parse
        "#{parsed['token_type']} #{parsed['access_token']}"
    end

    def self.search(term, latitude, longitude)
        url = "https://api.yelp.com/v3/businesses/search"
        params = {
            open_now: true,
            term: term,
            latitude: latitude,
            longitude: longitude,
            limit: 50
        }
        response = HTTP.auth(Yelp.bearer_token).get(url, params: params)
        obj = response.parse
        obj['businesses'].each do |business|
            puts business
            if !business.has_key? 'price' then
                business[:price] = "No Price Data Yet"
            end
        end
        obj
    end

    #generates the HTML for star icons based off of rating numeric
    def self.rating_html rating
        if rating < 1 or rating > 5
            return ""
        end
        @rating_html = ""
        @rating_int = rating.floor
        counter = 0
        while counter < @rating_int  do #full star
           @rating_html += "<span class=&quot;fa fa-star checked&quot;></span> "
           counter +=1
        end
        if @rating_int < rating #half star
            @rating_html += "<span class=&quot;fa fa-star-half checked&quot;></span>"
        end
        return @rating_html
    end

    #def self.genRandomDeals restaurants
     #  @all_deals = ""
      # @deal_num = 0
       #restaurants["businesses"].each do |this|
        #@deal_num += 1
        #@percent = (((rand % 5) + 1) * 10).floor
        #@all_deals += "{:Restaurant => '#{this["name"]}', :ID => '#{this["id"]}', :Deal_Title => '#{@percent}% Off', :Offer_Code => 'PCTOFF#{@deal_num}', :Exp_Date => '6/15/18', :Description => '#{@percent}% off any purchase', :Restrictions => 'Only valid for one purchase'}, \n"
       #end
       #return @all_deals
    #end

end