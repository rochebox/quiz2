class BandsController < ApplicationController
	def index
		@bands = Band.all
	end

	def new
		@band = Band.new
	end

	def create
		Band.create(band_params)
		redirect_to root_path
	end

	private

	def band_params
	    params.require(:band).permit( :name, :members, :song1, :song2, :song3 )
	end
end
