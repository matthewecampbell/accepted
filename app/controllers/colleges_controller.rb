class CollegesController < ApplicationController
  def index
    @colleges = Rails.cache.fetch("colleges") {College.all}

    respond_with @colleges
  end

  def show
    binding.pry
    @college = College.find(params[:id])
  end
end
