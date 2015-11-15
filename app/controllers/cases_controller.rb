class CasesController < ApplicationController
	before_action :set_case, only: [:show, :edit, :update, :destroy]
	
	def new
		@case = Case.new
	end

	def create
		@case = Case.new(case_params)
		if @case.save
			flash[:notice] = "Case has been created."
			redirect_to @case
		else
			flash.now[:alert] = "Case has not been created."
			render "new"
		end
	end

	def show; end
				
	private 

	def set_case
		@case = Case.find(params[:id])
	end

	def case_params
		params.require(:case).permit(:title, :content, :representative)
	end
end
