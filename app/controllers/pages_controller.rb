class PagesController < ApplicationController
  # require users to sign up before seeing the secret page
  before_action :require_login, only: [:secret]

  def index
  end

  def secret
  end
end
