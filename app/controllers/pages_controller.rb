class PagesController < ApplicationController
  def home
    @menu = Food.last(2)
  end

  def service
  end

  def contact
  end

  def about
  end
end
