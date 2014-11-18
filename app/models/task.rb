class Task < ActiveRecord::Base
	belongs_to :project
	belongs_to :user
	belongs_to :status
	has_many :steps 
	accepts_nested_attributes_for :steps, :allow_destroy => true
end
