class PagesController < ApplicationController
  def home
    @menu = Food.last(5)
  end

  def service
    @events = Event.last(2)
  end

  def contact
  end

  def about
  end
end
