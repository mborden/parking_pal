class MapController < ApplicationController
	def index
		if params[:reason] != nil
			@reason = params[:reason][:r]
			@id = params[:reason][:id]
			@name = params[:reason][:name]
			@status = params[:reason][:status]
			@type = params[:reason][:type]
		end

		if @reason == "s"
			@overlay = "overlayVisible"
		else 
			@overlay = "overlayHidden"
		end

		@parkingspots = Parkingspot.all
		@parkinglot = Parkinglot.find(1)
		@users = User.all
		@uname = []
		@users.each do |u|
			@uname << u.name
		end

	end

	def spot
	end
end
