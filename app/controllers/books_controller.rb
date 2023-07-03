class BooksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  include PermissionsCheck

  def index
    @books = Book.all
  end

  def show
  end

  def new
    check_permissions(2)
    @book = Book.new
  end

  def edit
    check_permissions(2)
  end

  def create
    check_permissions(2)
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book, notice: 'Book was successfully created.'
    else
      render :new
    end
  end

  def update
    check_permissions(2)
    if @book.update(book_params)
      redirect_to @book, notice: 'Book was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    check_permissions(2)
    @book.destroy
    redirect_to books_url, notice: 'Book was successfully destroyed.'
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :author, :description, :publication_date, :isbn)
    end
end
