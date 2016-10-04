class CollegesController < ApplicationController
  def index
    @colleges = Rails.cache.fetch("colleges") {College.all}
  end

  def show
    @college = College.find(params[:id])
    @post_meta = {
      latitude: @college.latitude,
      longitude: @college.longitude
    }
  end

  def favorite
  	college = College.find(params[:id])
    current_user.favorite_colleges.create(college.attributes)
    flash[:notice] = "Favorited #{college.name}"
    redirect_to college_path(college)
  end

  def unfavorite
  	college = College.find(params[:id])
    current_user.favorite_colleges.find(params[:id]).destroy
    flash[:notice] = "Unfavorited #{college.name}"
    redirect_to college_path(college)
  end
end
