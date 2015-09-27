class User < ActiveRecord::Base

	has_secure_password

	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user.try(:authenticate, params[:password])

	end

	validates :email, uniqueness: true, presence: true
	validates :password_digest, presence: true
	validates_confirmation_of :password

	has_many :articles

end
