class User < ApplicationRecord

  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :attendances
    has_many :events, through: :attendances

    after_create :welcome_send

    def welcome_send
    	UserMailer.welcome_email(self).deliver_now
    end
end
