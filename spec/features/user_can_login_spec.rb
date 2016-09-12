require 'rails_helper'

RSpec.feature "User can login" do
  scenario "and see the index page" do
    user = create_a_user
    user_logs_in

    expect(page).to have_content "Welcome, #{user.name}!"
  end
end
