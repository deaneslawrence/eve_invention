class BlueprintUser < ActiveRecord::Base
	belongs_to :users
	belongs_to :blueprints
end
