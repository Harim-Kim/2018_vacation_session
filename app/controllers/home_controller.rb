class HomeController < ApplicationController
  def index
    @reply = Reply.new
  end
end
