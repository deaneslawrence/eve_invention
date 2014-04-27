class Blueprint < ActiveRecord::Base
	has_many :blueprint_users
	has_many :users, through: :blueprint_users
end
