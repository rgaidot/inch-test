class PersonsController < ApplicationController
  def index
    render json: Person.all
  end
end
