class PagesController < ApplicationController
  def home
    @menu = Food.last(5)
  end

  def service
  end

  def contact
  end

  def about
  end
end
