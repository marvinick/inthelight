require "rails_helper"

RSpec.feature "Users can create case" do 
	scenario "with valid attributes" do 
		visit "/"
		click_link "Create Case" 
		fill_in "Title", with: "Asylum"
		fill_in "Content", with: "Pending for 10 years"
		fill_in "Representative", with: "Cooke"

		click_button "Create Case" 

		expect(page).to have_content("Case has been created.")
	end
end