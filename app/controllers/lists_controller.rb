class ListsController < ApplicationController
  before_action :check_for_login

    def new
      @list = List.new
    end

    def index
    @my_list = @current_user.lists.all
    end

    def create
      list = List.create list_params
      @current_user.lists << list # Association
      # One step alternative to the above:
      # @current_user.mixtapes.create mixtape_params
      redirect_to list_path(list.id)
    end

    def show
    @list = List.find params[:id]
    end

    private
    def list_params
      params.require(:list).permit(:to, :title, :description, :image, :category_id)
    end
  end
