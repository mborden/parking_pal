class ParkingspotController < ApplicationController
	def index
		id = params[:id] || 1
		@spot = Parkingspot.find(id)
		@user = current_user
		render(partial: 'spot', object: @spot) if request.xhr?
	end
	
	def take 

		redirect_to message_path
	end

	def reserve

		redirect_to schedule_path
	end

	def leave

		redirect_to root_path
	end

	def cancel

		redirect_to stats_path
	end

end
