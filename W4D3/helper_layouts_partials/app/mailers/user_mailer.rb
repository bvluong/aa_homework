class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'

  def welcome_email(user)
    @user = user
    @url = 'http://localhost:3000/users/new'
    mail(to: user.username, subject: "Hello")
  end


end
