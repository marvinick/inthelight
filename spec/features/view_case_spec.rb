require "rails_helper" 

RSpec.feature "Users can view case" do 
	before do 
		FactoryGirl.create(:story, title: "Asylum", content: "pending")
		visit "/"
	end

	scenario "for given story" do 
		click_link "Asylum"
		expect(page).to have_content "Asylum"
		expect(page).to have_content "pending"
	end
end	

