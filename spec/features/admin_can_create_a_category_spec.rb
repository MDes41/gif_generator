require 'rails_helper'

RSpec.feature "Admin is logged in" do

  scenario "and can create a category" do
    create_and_log_in_admin

    visit admin_categories_path
    click_on "Create A New Category"
    fill_in "Category Name", with: "Food"
    click_on "Create"
    expect(page).to have_content "Gif's for Food"
  end

  scenario "and cannot create a category with a blank name" do
    create_and_log_in_admin

    visit admin_categories_path
    click_on "Create A New Category"
    fill_in "Category Name", with: nil
    click_on "Create"

    expect(page).to have_content "Name can't be blank"
  end

  scenario "and cannot create a category with two words" do
    create_and_log_in_admin

    visit admin_categories_path
    click_on "Create A New Category"
    fill_in "Category Name", with: "Two Words"
    click_on "Create"

    expect(page).to have_content "Name has to be one word and cannot have a space."
  end
end
