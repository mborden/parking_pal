class MessageController < ApplicationController
	protect_from_forgery prepend: true
	before_action :authenticate_user!

	def index
	end

	def display
		#current_user gets the last conversation (chronologically, the first in the inbox)
		#conversation = current_user.mailbox.inbox.first
		mailboxVar = current_user.mailbox
		conversation = mailboxVar.conversations
		@receipts = conversation

		#conversation = current_user.mailbox.inbox
		#@receipts = current_user.mailbox.inbox

		#current_user gets its receipts chronologically ordered
		#@receipts = conversation.receipts_for current_user

	end

	def new
		conversation = current_user.send_message(current_user, "Body", "Subject").conversation
		redirect_to root_path
	end
end
