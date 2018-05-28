class LoginTest
  def initialize(pages)
    @pages = pages
  end

  def load_home_page
    @pages.page_home.load
    @pages.page_home.isVisible
  end

  def validate_try_now
    @pages.page_home.openTryNow
    @pages.page_home.closeTryNow
  end

  def submit_contact_form()
    user = Users.contact_form_user
    @pages.page_home.enterName(user.name)
    @pages.page_home.enterEmail(user.email)
    @pages.page_home.enterMessage(user.message)
    sleep(3)
  end
end