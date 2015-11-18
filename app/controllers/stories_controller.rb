class StoriesController < ApplicationController
	before_action :set_story, only: [:show, :edit, :update, :destroy]
	
	def new
		@story = Story.new
	end

	def create
		@story = Story.new(story_params)
		if @story.save
			flash[:notice] = "Story has been created."
			redirect_to @story
		else
			flash.now[:alert] = "Story has not been created."
			render "new"
		end
	end

	def show; end
				
	private 

	def set_story
		@story = Story.find(params[:id])
	end

	def story_params
		params.require(:story).permit(:title, :content, :rep)
	end
end
