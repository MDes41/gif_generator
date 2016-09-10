require 'rails_helper'

RSpec.feature "Admin can login" do
  scenario "and see the admin page" do
    pending
    visit root

    click_on "Log In"
    fill_in "Username", with: "admin"
    fill_in "Password", with: "password"
    fill_in "Password Confirmation", with: "password"
    click_on "Log In"

    expect(page).to have_content "Welcom to the Admin Page"
  end
end
