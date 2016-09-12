

module TestHelpers

  def create_an_admin
    User.create(name: "admin", username: "admin", password: "password", password_confirmation: "password", role: 1)
  end

  def admin_logs_in
    visit root_path
    click_on "Log In"
    fill_in "Username", with: "admin"
    fill_in "Password", with: "password"
    fill_in "Password Confirmation", with: "password"
    click_on "Log In"
  end

  def create_a_user
    User.create(name: "user", username: "user", password: "password", password_confirmation: "password")
  end

  def user_logs_in
    visit root_path
    click_on "Log In"
    fill_in "Username", with: "user"
    fill_in "Password", with: "password"
    fill_in "Password Confirmation", with: "password"
    click_on "Log In"
  end

  def create_and_log_in_user
    create_a_user
    user_logs_in
  end

  def create_and_log_in_admin
    create_an_admin
    admin_logs_in
  end

  def create_category(name)
    Category.create(name: name)
  end

end
