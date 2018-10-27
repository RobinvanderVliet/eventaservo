class HomeController < ApplicationController
  def index
    @events = Event.venontaj.grouped_by_months
    @countries = Event.venontaj.count_by_country
  end
end
