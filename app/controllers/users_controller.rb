class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @hums = @user.hums
  end

  def edit
  end

  def update
  end
end
