class UsersController < ApplicationController
  # Встроенный в девайз фильтр — посылает незалогиненного пользователя
  before_action :authenticate_user!

  # Задаем объект @user для шаблонов и экшенов
  before_action :set_current_user

  def edit
  end

  def update
    change_user_data(params)
    redirect_to home
  end

  def index
    @posts = Post.where("user_id = '#{current_user.id}'")
  end

  def set_current_user
    @user = current_user
  end

  def show
    @user = User.find_by username: params[:username]
    @posts = Post.where("user_id = '#{@user.id}'")
  end

  def list
    @users = User.all
  end

  private

  def change_user_data(params)
    @user.username = params[:username]
    @user.name = params[:name]
    @user.avatar = params[:avatar]
    @user.save!
  end
end
