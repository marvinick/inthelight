FactoryGirl.define do 
	factory :user do 
		sequence(:email) { |n|  "immigrant#{n}@inthelight.com" }
		password "password"
	end
end
