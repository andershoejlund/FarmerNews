class UsersController < ApplicationController
  def show

  end

  def edit

  end

  def create
  end

  def profile
    @user = User.find(params[:id])
  end

end
