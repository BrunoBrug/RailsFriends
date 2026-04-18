class HomeController < ApplicationController
  def index
    @friends_count = Friend.count
  end

  def about
    @friends_count = Friend.count
  end
  
end
