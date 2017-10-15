class YelpController < ApplicationController
  require "json"
  require "http"
  require "optparse"
  
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
  SEARCH_LIMIT = 5
  
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
  
  def business(business_id)
  url = "#{API_HOST}#{BUSINESS_PATH}#{business_id}"

  response = HTTP.auth(bearer_token).get(url)
  response.parse
  end
  
  def option_added()
    options = {}
    OptionParser.new do |opts|
    opts.on("-tTERM", "--term=TERM", "Search term (for search)") do |term|
      options[:term] = term
    end
    
    opts.on("-pPRICE", "--price=PRICE", "Search price (for search)") do |price|
      options[:price] = price
    end
    
    opts.on("-rRADIUS", "--radius=RADIUS", "Search radius (for search)") do |radius|
      options[:radius] = radius
    end
    
    opts.on("-lLOCATION", "--location=LOCATION", "Search location (for search)") do |location|
      options[:location] = location
    end
  
    opts.on("-bBUSINESS_ID", "--business-id=BUSINESS_ID", "Business id (for lookup)") do |id|
      options[:business_id] = id
    end
  
    opts.on("-h", "--help", "Prints this help") do
      puts opts
      exit
    end
  end.parse!
  end
  
  def commanda(command)
    case command.first
    when "search"
    term = options.fetch(:term, DEFAULT_TERM)
    price = options.fetch(:price, DEFAULT_PRICE)
    radius = options.fetch(:radius, DEFAULT_RADIUS)
    location = options.fetch(:location, DEFAULT_LOCATION)
    raise "business_id is not a valid parameter for searching" if options.key?(:business_id)
    list_of_resturants = []
    response = search(term, radius, price, location)
    response["businesses"].each do |biz| 
      list_of_resturants.push(biz["name"])
    end
    return list_of_resturants.push
    when "lookup"
    business_id = options.fetch(:business_id, DEFAULT_BUSINESS_ID)


    raise "term is not a valid parameter for lookup" if options.key?(:term)
    raise "location is not a valid parameter for lookup" if options.key?(:lookup)

    response = business(business_id)

    puts "Found business with id #{business_id}:"
    puts JSON.pretty_generate(response)
  
    else
      puts "Please specify a command: search or lookup"
    end
  end
end




#ensures that you have a client ID and Client Secret which allows access to the yelp API



  

