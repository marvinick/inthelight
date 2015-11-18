require "rails_helper"

RSpec.feature "Users can create story" do 
	scenario "with valid attributes" do 
		visit "/"
		click_link "Add Story" 
		fill_in "Title", with: "Asylum"
		fill_in "Content", with: "Pending for 10 years"
		fill_in "Rep", with: "Cooke"

		click_button "Create Story" 

		expect(page).to have_content("Story has been created.")
	end
end