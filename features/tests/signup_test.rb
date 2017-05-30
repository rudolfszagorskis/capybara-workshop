class SignupTest
  def initialize(pages)
      @pages = pages
  end

  def load_home_page
    @pages.page_home.load
    home_page_visible?
  end

  def open_signup_form_submit_details
      @pages.page_home.click_try_now
      @pages.page_home.submit_signup(Users.signup_user)
  end

  def home_page_visible?
    @pages.page_home.visible?
  end

  def signup_without_email
    @pages.page_home.click_try_now
    @pages.page_home.submit_signup(Users.signup_without_email)
  end

  def signup_without_passwords
    @pages.page_home.click_try_now
    @pages.page_home.submit_signup(Users.signup_without_passwords)
  end

  def signup_unsuccessful
    @pages.page_home.signup_dialog
  end

end
