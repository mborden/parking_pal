class MessageController < ApplicationController
	protect_from_forgery prepend: true
	before_action :authenticate_user!

	def index
	end

	def display
	end

	def new
	end
end
