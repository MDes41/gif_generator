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

    expect(page).to have_content "Welcome, Matt!"
  end

  scenario "but not if the name username is not unique" do
    visit root_path
    click_on "Create New User"

    fill_in "First Name", with: "Matt"
    fill_in "Username", with: "m d"
    fill_in "Password", with: "password"
    fill_in "Password Confirmation", with: "password"
    click_on "Create New User"

    expect(page).to have_content "Username cannot have any spaces."
  end

  scenario "and cannot create a user with a blank name" do
    visit root_path
    click_on "Create New User"

    fill_in "First Name", with: nil
    fill_in "Username", with: "md"
    fill_in "Password", with: "password"
    fill_in "Password Confirmation", with: "password"
    click_on "Create New User"

    expect(page).to have_content "Name can't be blank"
  end

end
