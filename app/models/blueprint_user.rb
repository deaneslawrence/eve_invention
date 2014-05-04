class BlueprintUser < ActiveRecord::Base
  belongs_to :blueprint
  belongs_to :user
end
