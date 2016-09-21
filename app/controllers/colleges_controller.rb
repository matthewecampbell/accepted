class CollegesController < ApplicationController
  def index
    @colleges = Rails.cache.fetch("colleges") {College.all}
  end

  def show
    @college = College.find(params[:id])
  end
end
