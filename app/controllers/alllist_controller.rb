class AlllistController < ApplicationController
  def index
    @alllist = List.all
  end

  def show
    @list = List.find params[:id]
  end
end
