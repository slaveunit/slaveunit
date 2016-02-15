require 'rails_helper'

describe UsersController, :type => :controller do

	before do
		# @user = User.create!(email: "rspectest@email.com", password: "1qaz2wsx")
		@user = FactoryGirl.create(:user)
	end

	Describe "GET #show" do
		context "User is logged in" do
			before do
				sign_in @user 
			end
			it "loads correct user details"
				get :show, id: @current_user
				expect(response).to have_http_status(200)
				expect(assigns(:user)).to eq @user
			end
		end
		context "No User logged in" do
			it "redirects to login" do
				get :show, id: @user.id
				expect(response).to redirect_to(root_path)
			end
		end
	end

end