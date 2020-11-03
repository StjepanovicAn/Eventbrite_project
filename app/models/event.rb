class Event < ApplicationRecord
	validates :start_date, presence: true
	has_many :attendances 
	has_many :users, through: :attendances

	def ending_date
		end_date = start_date + duration*60
	end
end