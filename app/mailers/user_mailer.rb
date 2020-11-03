class UserMailer < ApplicationMailer
	default from: 'no-reply@eventbrite.fr'

	def welcome_email(user)
		@user = user

		@url = 'http://Eventbrite.fr/login'

		mail(to: @user.email, subject: 'Bienvenue chez Eventbrite!')
	end
end
