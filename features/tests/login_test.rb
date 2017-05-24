class LoginTest
  def initialize(pages)
      @pages = pages
  end

  def load_home_page
    @pages.page_home.load
    home_page_visible?
  end

  def open_login_form_submit_details
      @pages.page_home.click_login
      @pages.page_home.success_login(Users.login_user)
  end

  def project_page_visible?
    @pages.page_project.visible?(Users.login_user)
  end

  def open_login_form_submit_empty_details
      @pages.page_home.click_login
      @pages.page_home.click_login_form
  end

  def login_unsuccessfull
      @pages.page_home.login_dialog
  end

  def open_login_form_submit_incorrect_details
      @pages.page_home.click_login
      @pages.page_home.success_login(Users.login_user_negative)
  end

  def valid_error_message
      @pages.page_home.incorrect_login_details
  end

end
