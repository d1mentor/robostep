class UsersController < ApplicationController
  # Встроенный в девайз фильтр — посылает незалогиненного пользователя
  before_action :authenticate_user!

  # Задаем объект @user для шаблонов и экшенов
  before_action :set_current_user

  helper_method :user_avatar

  def user_avatar(user)
    if user.avatar.nil? then
      avatar_url = "https://i.guim.co.uk/img/media/26392d05302e02f7bf4eb143bb84c8097d09144b/446_167_3683_2210/master/3683.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=49ed3252c0b2ffb49cf8b508892e452d"
    else
      avatar_url = user.avatar
    end
  end

  def edit
  end

  def update
    change_user_data(params)
    redirect_to home
  end

  def index

  end

  def set_current_user
    @user = current_user
  end

  private

  def change_user_data(params)
    @user.username = params[:username]
    @user.name = params[:name]
    @user.avatar = params[:avatar]
  end
end
