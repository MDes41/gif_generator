require 'rails_helper'

RSpec.feature "User can create an account" do
  scenario "and see the user home page" do
    visit root_path
    click_on "Create New User"

    fill_in "First Name", with: "Matt"
    fill_in "Username", with: "md"
    fill_in "Password", with: "password"
    fill_in "Password Confirmation", with: "password"
    click_on "Create New User"

    expect(page).to have_content "Welcome, Matt"
  end
end
