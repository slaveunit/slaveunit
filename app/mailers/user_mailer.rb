class UserMailer < ApplicationMailer
	default from: "slav3unit@gmail.com"

	def contact_form(email, name, message)
	@message = message
		mail(:from => email,
			:to => 'slav3unit@gmail.com',
			:subject => "A new contact form message from #{name}")
	end

	  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(user)
    @user = user
    mail( :to => @user.email,
    :subject => 'Thanks for checking out SLAVE UNIT APPAREL' )
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver_now
  end
	
end
