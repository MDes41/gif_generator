require 'rails_helper'

RSpec.feature 'Admin can create a gif' do
  scenario 'from the category show page' do
    create_and_log_in_admin
    category = create_category("Food")
    visit admin_category_path(category)
    click_on "Generate Gif"
    save_and_open_page

    expect(page).to have_link(href: Gif.last.url_path)
  end
end
