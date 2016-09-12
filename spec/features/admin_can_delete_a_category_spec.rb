require 'rails_helper'

RSpec.feature "Admin can delete a category" do
  scenario "from the show page" do
    create_and_log_in_admin
    category = create_category("Food")
    visit admin_category_path(category)
    click_on "Delete Category"

    expect(page).to have_content "Admin Categories Page"
    expect(page).to_not have_content "#{category.name}"
  end

  scenario "from the index page" do
    create_and_log_in_admin
    category = create_category("Food")
    visit admin_categories_path

    expect(page).to have_content "#{category.name}"

    click_on "Delete"

    expect(page).to_not have_content "#{category.name}"
  end

end
