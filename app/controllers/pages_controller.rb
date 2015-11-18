class PagesController < ApplicationController
  def home
  	@stories = Story.all
  	@story = Story.new
  end
end
