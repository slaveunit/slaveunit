FactoryGirl.define do
	factory :product do
		name "Factory Tee"
		description "This is a factory test."
		colour "red"
		price "18"
		photo File.new("app/assets/images/Thanks-sm.jpg")
		#photo Rack::Test::UploadedFile.new(Rails.root +"Thanks-sm.jpg", "image/jpg")
		#photo "app/assets/images/Thanks-sm.jpg"
	end
end