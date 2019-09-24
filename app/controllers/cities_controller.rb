class CitiesController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  def index
      @cities = City.all
   
  end

  def destroy
    @city.destroy
    redirect_to cities_path, notice: "You have deleted the content!"
  end

  def confirm
    @city = City.new(blog_params)
    render :new if @city.invalid?
  end

  def new
    if params[:back]
      @city = City.new(blog_params)
    else
      @city = City.new
    end
  end

  def create
    @city = City.create(blog_params)
    if @city.save
      redirect_to cities_path, notice: "You have created new content!"
    else
      render :new
    end
  end
  def show
  end
  def edit
  end
  def update
    if @city.update(blog_params)
      redirect_to cities_path, notice: "You have edited this content！"
    else
      render :edit
    end
  end

  private
  def blog_params
    params.require(:city).permit( :content)
  end
  def set_blog
    @city = City.find(params[:id])
  end
end


