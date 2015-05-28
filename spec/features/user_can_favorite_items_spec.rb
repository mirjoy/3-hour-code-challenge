require 'rails_helper'

RSpec.describe "user can favorite items", :type => :feature do
	let!(:item) { item = Item.create(name: "kleenex", description: "boogers") }

	it "when it clicks on items to favorite the content changes" do
		visit root_path
		click_link_or_button("Add to Favorites")
		expect(page).to have_content("Remove from Favorites")

		visit favorites_path
		expect(page).to have_content(item.name)
	end

	it "can see all favorites when it visits the favorites page" do

	end
end