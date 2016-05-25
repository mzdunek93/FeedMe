##
# The controller for users

class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only, :except => :show

  ##
  # The index action, showing the list of all the users

  def index
    @users = User.all
  end

  ##
  # The show action, showing a particular user

  def show
    @user = User.find(params[:id])
    unless current_user.admin?
      unless @user == current_user
        redirect_to :back, :alert => "Access denied."
      end
    end
  end

  ##
  # The update action, updating a user

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end

  ##
  # The destroy action, deleting a user

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path, :notice => "User deleted."
  end

  private

  ##
  # Helper action checking whether a user can access an action based on being an admin

  def admin_only
    unless current_user.admin?
      redirect_to :back, :alert => "Access denied."
    end
  end

end
