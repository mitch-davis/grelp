# Commenting a Core Class to Appease Reek
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def initialize
    super
    @location = Hash.new
    require_location
  end

  def require_location
    if (!location = request.location)
      redirect_to :back
    else
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
