# Commenting a Core Class to Appease Reek
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_location

  def initialize
    super
    @location = Hash.new
  end

  def require_location
    if (!defined?(request.location)) then
      flash[:notice] = "We were unable to obtain your location at this time.  Please try again later (refresh)."
    else
      location = request.location
      if (!cookies.has_key?(:latitude) || !cookies.has_key?(:longitude)) then
        @location[:latitude] = location.latitude
        @location[:longitude] = location.longitude
      else
        @location[:latitude] = cookies[:latitude]
        @location[:longitude] = cookies[:longitude]
      end
    end
  end
end
