class MailaMailer < ApplicationMailer
  default from: "phpcodehero@gmail.com"

  def welcome_email(user)
    @user = user
    @url = 'http://www.codehero.com/signin'
    mail(to: @user.email,subject: 'welcome to codehero')
end

end
