class UserMailer < ApplicationMailer
	default from: 'no-reply@eventbrite.fr'

	def welcome_email(user)
		@user = user

		@url = 'http://Eventbrite.fr/login'

		mail(to: @user.email, subject: 'Bienvenue chez Eventbrite!')
	end

	def new_attendances_email(user)
		@user = user

		mail(to: @user.email, subject: 'participation à un event!')
	end
end
