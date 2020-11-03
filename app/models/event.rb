class Event < ApplicationRecord
	validates :start_date, presence: true
	has_many :attendances 
	has_many :users, through: :attendances
end
