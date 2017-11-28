class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_location

  def require_location
    @location = Hash.new

    if (!cookies.has_key?(:latitude) || !cookies.has_key?(:longitude)) then
        if (!defined?(request.location)) then
          redirect_to :back
        else
          @location[:latitude] = request.location.latitude
          @location[:longitude] = request.location.longitude
        end
    else
        @location[:latitude] = cookies[:latitude]
        @location[:longitude] = cookies[:longitude]
    end
  end
end
