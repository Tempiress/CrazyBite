class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.create(
      name: params[:user][:name],
      nickname: params[:user][:nickname],
      email: params[:user][:email],
      password: params[:user][:password]
    )

    redirect_to "/", notice: "Успешная регистрация!"
  end
end
