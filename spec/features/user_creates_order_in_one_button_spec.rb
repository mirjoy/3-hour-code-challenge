require 'rails_helper'

RSpec.describe "user creates order in one click", :type => :feature do
 	it "can create orders easily" do
 		item = Item.create(name: "kleenex", description: "boogers")
    
    visit root_path
    click_button("Order Now")

    expect(page).to have_content(item.name)
 		expect(page).to have_content("You have successfully ordered this item!")
  end
end