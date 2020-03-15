class ListsController < ApplicationController
  before_action :check_for_login

    def new
      @list = List.new
    end

    def create
      list = List.create list_params
      @current_user.lists << list # Association

      # One step alternative to the above:
      # @current_user.mixtapes.create mixtape_params

      redirect_to root_path # IRL this would be: redirect_to mixtape
    end

    private
    def list_params
      params.require(:list).permit(:to, :title, :description, :image, :category_id)
    end
  end
