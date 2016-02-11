require 'rails_helper'

describe Product do
	context "when the product has comments" do
		before do
			@product = Product.create!(name: "Skull Tee", description: "A t-shirt with a skull.", colour: "gray", price: "18")
			@user = User.create!(first_name: "This", last_name: "Guy", email: "somekindof@email.com", password: "1qaz2wsx")
			@product.comments.create!(rating: 1, user: @user, body: "Sick tee!")
			@product.comments.create!(rating: 3, user: @user, body: "Nice!")
			@product.comments.create!(rating: 5, user: @user, body: "Awesome!")
			 
		end
		it "should return the average rating of comments" do
			expect(@product.average_rating).to eq 3
		end
	end

end