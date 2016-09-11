require 'rails_helper'

RSpec.feature "Admin is logged in" do

  scenario "and when searching for a gif the category is created" do
    skip
  end

  scenario "and can create a gif" do
    create_and_log_in_admin

    visit admin_categories_path
    click_on "Create A New Category"
    fill_in "Category Name", with: "Food"
    click_on "Create"
    expect(page).to have_content "Gif's for Food"
  end
end
