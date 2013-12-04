class LocationsController < ApplicationController
	def edit
		@location=Locations.find(params[:id])
	end

	def update
		@location = Locations.find(params[:id])
		@location.update(location_params)
		redirect_to root_path
	end

	
	def show
		id = params[:id]
		@location = Locations.find(id)

	end

	
	def show_all
		@locations=Locations.all
	end

	
	def new
		@location=Locaitons.new
	end

	
	def create
		@location=Locations.new(location_params)
		@locaiton.save
		redirect_to rooth_path

	end

	def destroy
		@location=Locations.find(params[:id])
		@location.destroy
		redirect_to root_path
	end

end

