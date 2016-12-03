#handles parking spot logic
		$successResponse = ["", "Successfully taken the spot", "Successfully reserved the spot", "Successfully left the spot", "Successfully canceled your reservation"]

#handles parking spot logic
class ParkingspotController < ApplicationController
	#def self.successResponses
	#end

	def index
		id = params[:id] || 1
		@current_spot = Parkingspot.find(id)
		@current_user = current_user
		if @current_spot.occupying != nil
			getuseremail(@current_spot)
		end
		render(partial: 'spot', object: @current_spot) if request.xhr?
	end

	def getuseremail(current_spot)
			session[:recipient] = User.find(current_spot.occupying).email
	end
	
	def update
		#ParkingspotController.successResponses
		purpose = params[:purpose].to_i || -1
		spot_id = params[:spot_id].to_i || -1
		user_id = params[:user_id].to_i || -1
		spot_valid = false

		if spot_id > 0 && user_id > 0
			@spot = Parkingspot.find(spot_id)
			@user = User.find(user_id)
			spot_valid = true
		end

		spotis_parked = false

		if purpose == 1
			spotis_parked = true
		elsif purpose > 4
				flash[:failure] = "Unknown Error";
		end

		flash[:success] = $successResponse[purpose]

		@spot.status = ParkingspotController.determinecurrentspotstatus(purpose)
		@spot.occupying = ParkingspotController.determineifiseridisneeded(purpose, @user)
		@user.is_parked = spotis_parked
		

		if spot_valid
			@spot.save!
			@user.save!
		end

		redirect_to parkinglot_path
	end

	def self.determineifiseridisneeded(purpose, user)
		if purpose == 1 || purpose == 2
			user.id
		else
			nil
		end
	end

	def self.determinecurrentspotstatus(purpose)
		if purpose == 1
			'taken'
		elsif purpose == 2
			'reserved'
		else
			'open'
		end
	end

end
