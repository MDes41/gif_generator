require 'rails_helper'

RSpec.feature 'Admin can see a list of gifs' do
  scenario 'from the category show page' do
    create_and_log_in_admin
    category = create_category("Food")
    visit admin_category_path(category)
    click_on "Generate Gif"
    visit admin_category_path(category)

    expect(page).to have_link "View Gif", href = "#{admin_category_gif_path(category, category.gifs.last)}"
  end
end
