class PagesController < ApplicationController
  # require users to sign up before seeing the emails page
  before_action :require_login, only: [:email]

  def index
  end

  def email
    @user = current_user
    # UserMailer.send_email(@user).deliver
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user, notice: "Signed up successfully!"
    else
      render :new
    end
  end
end
