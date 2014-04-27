class User < ActiveRecord::Base
	has_many :blueprint_users
	has_many :blueprints, through: :blueprint_users
end
