class UsersController < ApplicationController
  def index
  end

  def show
  	@books = Book.all
  end

  def edit
  end
end
