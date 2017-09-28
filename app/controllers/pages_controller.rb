class PagesController < ApplicationController
  # require users to sign up before seeing the emails page
  before_action :require_login, only: [:email]

  def index
  end

  def email
  end
end
