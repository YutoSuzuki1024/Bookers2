class BooksController < ApplicationController
	before_action :authenticate_user!
	def new
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)
		@book.user_id = current_user.id
		if @book.save
			redirect_to book_path(@book.id)
		else
			render 'books/index'
		end
	end

	def index
		@user = User.find(current_user.id)
		@books = Book.all
		@book = Book.new
	end

	def show
		@book = Book.find(params[:id])
		# @user = @book.user
		@books = Book.all
		@user = User.find(current_user.id)
		#http://localhost:3000/books/3以降で反応する（1,2はuser_idがnil)
	end

	def edit
	end

	def update
		
	end

	def destroy
		
	end

	private
	def book_params
		params.require(:book).permit(:title, :body)
	end
end
