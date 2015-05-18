class SessionsController < ApplicationController
  def index

  end

  def login
  end

  def destroy
    logout
    redirect_to root_path
  end
end
