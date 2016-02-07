class UserNotifier < ApplicationMailer
	default from: "slav3unit@gmail.com"


# send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(user)
    @user = user
    mail( :to => @user.email,
    :subject => 'Thanks for checking out SLAVE UNIT APPAREL' )
    
    ActionMailer::Base.mail(:from => "Slave Unit Apparel Co.",
    	:to => @user.email
    	:subject => "Thanks for signing up."
    	:body => @message).deliver_now
  end

end
