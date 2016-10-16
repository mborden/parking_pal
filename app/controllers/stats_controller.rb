class StatsController < ApplicationController
	def index
		@totalspots = Parkingspot.count('id');
		@available = Parkingspot.where(status: 'open').count('id');
		@reserved = Parkingspot.where(status: 'reserved').count('id');
		@taken = Parkingspot.where(status: 'taken').count('id');
	end
end
