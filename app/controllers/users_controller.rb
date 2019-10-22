class UsersController < ApplicationController

  def index
    users = User.all
    render json: UserSerializer.new(users).to_serialized_json
  end

  def create

  end

  def verify
    user = User.find{|user| user.username.downcase == params["username"].downcase}
    if (user && user.authenticate(params["password"]) )
      render json: UserSerializer.new(user).to_serialized_json
    else
      render json: {message: "Invalid username or password"}
    end
  end



end
