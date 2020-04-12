class AuthorsController < ApplicationController
  load_and_authorize_resource find_by: :slug
  before_action :set_author, only: [:show, :edit, :update, :destroy]

  def index
    @authors = Author.all
  end

  def show
  end

  def new
    @author = Author.new
  end

  def edit
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to authors_path, notice: 'Author was successfully created.'
    else
      render :new
    end
  end

  def update
    if @author.update(author_params)
      redirect_to authors_path, notice: 'Author was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @author.destroy
    redirect_to authors_url, notice: 'Author was successfully destroyed.'
  end

  private
    def set_author
      @author = Author.friendly.find(params[:id])
    end

    def author_params
      params.require(:author).permit(:name)
    end
end
