class Task < ActiveRecord::Base
	belongs_to :project
	belongs_to :user
	belongs_to :status
end
