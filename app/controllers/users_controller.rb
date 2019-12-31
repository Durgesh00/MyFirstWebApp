class UsersController < ApplicationController
  def index
    puts params
  end

  def new

  end
  def create
    puts params
    User.create(first_name: params["first_name"],last_name: params["last_name"],contact_number: params["contact_number"],email: params["email"],password: params["password"])
    redirect_to rides_path
  end
end
