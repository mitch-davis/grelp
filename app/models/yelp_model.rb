class Yelp < ApplicationRecord
    
    CLIENT_ID = "KlCuB5YcLt3UlZuk9e8uRQ"
    CLIENT_SECRET = "6J6CPbOkVAabYGfqgDkK4gb4mYhngJaAS5pbzAxT3gHsn8et7xbODCxqFFE59xkM"
    
    API_HOST = "https://api.yelp.com"
    SEARCH_PATH = "/v3/businesses/search"
    BUSINESS_PATH = "/v3/businesses/"  # trailing / because we append the business id to the path
    TOKEN_PATH = "/oauth2/token"
    GRANT_TYPE = "client_credentials"
    
     DEFAULT_BUSINESS_ID = "yelp-san-francisco"
    DEFAULT_TERM = "dinner"
    DEFAULT_LOCATION = "Colorado , CO"
    DEFAULT_PRICE = "1"
    DEFAULT_RADIUS = 5000
    SEARCH_LIMIT = 10
  
    def bearer_token
    # Put the url together
    url = "#{API_HOST}#{TOKEN_PATH}"

    raise "Please set your CLIENT_ID" if CLIENT_ID.nil?
    raise "Please set your CLIENT_SECRET" if CLIENT_SECRET.nil?

    # Build our params hash
    params = {
        client_id: CLIENT_ID,
        client_secret: CLIENT_SECRET,
        grant_type: GRANT_TYPE
    }

    response = HTTP.post(url, params: params)
    parsed = response.parse

    "#{parsed['token_type']} #{parsed['access_token']}"
    end
    
    def search(term, radius, price, location)
    url = "#{API_HOST}#{SEARCH_PATH}"
    params = {
        term: term,
        price: price,
        location: location,
        radius: radius,
        limit: SEARCH_LIMIT
    }

    response = HTTP.auth(bearer_token).get(url, params: params)
    response.parse
    end
end
