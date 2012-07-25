class UserMailer < ActionMailer::Base
  default :from => "ritika@kreeti.com"

def welcome_email(user)
    @user = user
    @url  = "http://localhost:3000/users"
    mail(:to => user.email, :subject => "Welcome")
  end
end
