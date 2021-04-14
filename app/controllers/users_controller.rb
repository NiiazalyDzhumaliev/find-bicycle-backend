class UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create

  def already_registered?
    User.where(email: user_params[:email]).exists?
  end

  def create
    if !already_registered?
      user = User.create!(user_params)
      auth_token = AuthenticateUser.new(user.email, user.password).call
      response = { message: Message.account_created, auth_token: auth_token }
      json_response(response, :created)
    else
      json_response(message: Message.account_not_created, auth_token: '')
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
