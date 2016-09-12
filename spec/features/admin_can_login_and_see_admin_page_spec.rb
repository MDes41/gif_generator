require 'rails_helper'

RSpec.feature "Admin can login" do
  scenario "and see the admin page" do
    admin = create_an_admin
    admin_logs_in

    expect(page).to have_content "Welcome, #{admin.name}! This is the Admin Portal."
  end
end
