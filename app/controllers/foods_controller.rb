class FoodsController < ApplicationController
  # before_action :find_menu, only: [:index, :show]

  def index
    @menu = Food.all
  end

  def show
    @item = Food.find(params[:id])
  end

  private

  def find_menu
    @menu = Food.all
  end
end
