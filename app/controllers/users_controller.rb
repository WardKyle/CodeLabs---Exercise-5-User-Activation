class UsersController < ApplicationController
  def activate
    @user = User.find(params[:id])
    @user.update(active:true)
  end
  def deactivate
    @user = User.find(params[:id])
    @user.update(active:false)
  end
end
