class ProfilesController < ApplicationController
  def show
    before_action :authenticate_user!
  end

  def index
  end
end