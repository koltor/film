class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new()
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update(user_params)
  		redirect_to @user
  	end
  end

  def create
  	@user = User.new(user_params)
  	h = params[:status]
  	@user.status = h
  	if @user.save
  		redirect_to @user
  	end
  end

  def destroy

  end

  def user_params
  	params.require(:user).permit(:pseudo,:password, :avatar)
  end
end
