class RegistrationController < ApplicationController

  def create
    @user = User.new(params[:user])
    if @user.save
      render json: @user
    else
      render json: { fail: true }
    end
  end

end
