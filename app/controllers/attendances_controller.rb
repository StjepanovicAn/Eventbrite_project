class AttendancesController < ApplicationController

	after_create :new_attendance_send

	def new_attendance_send
		UserMailer.new_attendances_email(self.user).deliver_now
	end

	def index
	end

	def show
	end

	def new
	end

	def create
		@user = attendances.user
	end

	def edit
	end

	def update
	end

	def destroy
	end
end
