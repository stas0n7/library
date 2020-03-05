class AdminsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, except: :show
  before_action :admin_check
  def show
    ## show users except current admin. His can't change own role
    @users = []
    User.all.each do |user|
      @users << user
    end
    @users.delete current_user
  end

  def edit
  end

  def update
    @user.update(role: params[:role])
    redirect_to admin_path if @user.save
  end

  private

  def admin_check
    redirect_to root_path, notice: 'only admin have access' unless current_user.role == 'admin'
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end