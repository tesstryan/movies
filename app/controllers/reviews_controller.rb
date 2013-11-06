class ReviewsController < ApplicationController
def index
    @reviews = Review.all
  end

  def show
    @review = Review.find_by(:id => params[:id])
  end

  def new
  end

  def create
    #  Parameters: {"utf8"=>"✓", "authenticity_token"=>"FwzZexhwZZoiO4GO23kdGnWTcsozBwWtRbHqUpQctpo=", "title"=>"Apollo 13", "year"=>"2005", "director_id"=>"3", "commit"=>"Create Movie"}
    @review = Review.new
    @review.review = params[:review]
    @review.stars = params[:stars]

    @review.movies_id = params[:movies_id]

    @review.save

    redirect_to movies_url
  end

  def edit
    @review = Review.find_by(:id => params[:id])
  end

  def update
    @review = Review.find_by(:id => params[:id])
    @review.review = params[:review]
    @review.stars = params[:year]

    if @review.save
      redirect_to movies_url
    else
      render 'new'
    end
  end

  def destroy
    @review = Review.find_by(:id => params[:id])
    @review.destroy

    redirect_to reviews_url
  end
end



