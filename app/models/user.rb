class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
		:recoverable, :rememberable, :trackable, :validatable

	has_one :schedule
	acts_as_messageable

	def mailboxer_name
		return self.name
	end

	def mailboxer_email(object)
		return self.email
	end

end
