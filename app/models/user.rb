class User < ActiveRecord::Base
	validates :first_name, :password, presence: true

has_many :contacts

end
