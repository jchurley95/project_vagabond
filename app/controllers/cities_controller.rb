class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find params[:id]
    @city_posts = @city.posts.sort.reverse
  end
end
