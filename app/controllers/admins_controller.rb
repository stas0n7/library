class AdminsController < ApplicationController
  def show
    @users = User.all
  end

  def edit
    @user = User.find(params[:user_id])
  end

  def update
    @user = User.find(params[:user_id])
    @user.update(role: params[:role])
    redirect_to admin_path if @user.save
  end
end