class BuildingsController < ApplicationController
  def index
    render json: Building.all
  end
end
