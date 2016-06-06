##
# The controller for restaurants

class RestaurantsController < ApplicationController
  expose(:restaurants)
  expose(:restaurant)

  ##
  # The index action, displaying all the restaurants. Also the root path of the app

  def index
	  if params[:search]
      self.restaurants = Restaurant.search(params[:search])
	  end
  end
end
