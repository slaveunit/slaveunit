class UserMailer < ApplicationMailer::Preview
	def contact_form
		UserMailer.contact_form("john@example.com", "John", "Hello, world!")
	end
end