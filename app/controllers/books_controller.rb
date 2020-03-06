class BooksController < ApplicationController
  load_and_authorize_resource
  before_action :set_book, only: %i[show edit update destroy add_author_page remove_author_page add_author remove_author]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def add_author_page
  end

  def add_author
    @book.authors << Author.find(params[:author_id])
    redirect_to books_path, notice: 'Author successfully added'
  end

  def remove_author_page
  end

  def remove_author
    @book.authors.delete Author.find(params[:author_id])
    redirect_to books_path, notice: 'Author successfully removed'
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path, notice: 'Book was successfully created.'
    else
      render :new
    end
  end

  def update
    if @book.update(book_params)
      redirect_to books_path, notice: 'Book was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_url, notice: 'Book was successfully destroyed.'
  end

  private

    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :cover, :category_id, author_ids: [])
    end
end
