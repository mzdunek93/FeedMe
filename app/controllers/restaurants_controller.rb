##
# The controller for restaurants

class RestaurantsController < ApplicationController
  expose :restaurants, ->{Restaurant.all}
  expose :restaurant

  before_action :authenticate_user!, except: [:show, :index]
  before_action :correct_user!, except: [:show, :index, :new, :create]

  ##
  # The index action, displaying all the restaurants. Also the root path of the app

  def index
	  if params[:search]
      self.restaurants = Restaurant.search(params[:search])
	  end
  end

  def create
    restaurant.user = current_user
    if restaurant.save
      redirect_to restaurant_path(restaurant)
    else
      render :new
    end
  end

  def update
    if restaurant.update(restaurant_params)
      redirect_to restaurant_path(restaurant)
    else
      render :edit
    end
  end

  def destroy
    restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :phone, :address, :logo)
  end

  def correct_user!
    redirect_to root_path unless restaurant.user == current_user
  end
end
