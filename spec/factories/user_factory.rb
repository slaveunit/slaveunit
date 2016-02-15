FactoryGirl.define do
	factory :user do
		email "factorytest@user.com"
		password "2wsx3edc"
		first_name "Factorytest"
		last_name "User"
		admin "false"
	end
end