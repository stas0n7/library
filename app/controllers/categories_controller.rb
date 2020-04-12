class CategoriesController < ApplicationController
  load_and_authorize_resource find_by: :slug
  before_action :set_category, only: %i[show edit update destroy add_book_page add_book remove_book_page remove_book]

  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def add_book_page
  end

  def remove_book_page
  end

  def add_book
    @category.books << Book.find(params[:book_id])
    redirect_to categories_path, notice: 'book successfully added'
  end

  def remove_book
    @category.books.delete Book.find(params[:book_id])
    redirect_to categories_path, notice: 'book successfully removed'
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_url, notice: 'Category was successfully created.'
    else
      render :new
    end

  end

  def update
    if @category.update(category_params)
      redirect_to categories_url, notice: 'Category was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_url, notice: 'Category was successfully destroyed.'

  end

  private

  def set_category
    @category = Category.friendly.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:title)
  end
end
