require 'rails_helper'

RSpec.feature 'Admin can delete a gif' do
  scenario 'from the gif show page' do
    create_and_log_in_admin
    category = create_category("Food")
    visit admin_category_path(category)
    click_on "Generate Gif"
    click_on "Delete"

    expect(page).to have_content "Gif's for #{category.name}"
  end
end
