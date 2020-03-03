class BooksController < ApplicationController
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
    if @book.save
      redirect_to books_path, notice: 'Author successfully added'
    else
      render :add_author_page
    end
  end

  def remove_author_page
  end

  def remove_author
    @book.authors.delete Author.find(params[:author_id])
    redirect_to books_path, notice: 'Author successfully removed'
  end

  def create
    @book = Book.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :cover, :category_id, author_ids: [])
    end
end
