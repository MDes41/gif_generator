require 'rails_helper'

RSpec.feature "User can login" do
  scenario "and see the index page" do
    user = User.create(name: "Matt", username: "md", password: "password", password_confirmation: "password")

    visit root_path
    click_on 'Log In'
    fill_in "Username", with: "md"
    fill_in "Password", with: "password"
    fill_in "Password Confirmation", with: "password"
    click_on "Log In"

    expect(page).to have_content "Welcome, #{user.name}!"
  end
end
