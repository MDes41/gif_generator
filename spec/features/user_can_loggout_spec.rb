require 'rails_helper'

RSpec.feature 'User can logout' do
  scenario 'after they are logged in' do
    create_and_log_in_user
    visit root_path
    expect(page).to have_content "Welcome"
    click_on "Logout"
    expect(page).to_not have_content "Logout"
  end
end
