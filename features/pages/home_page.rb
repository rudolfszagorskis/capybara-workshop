class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    @button_start = Element.new(:id, 'start_button')
    @button_login = Element.new(:id, 'login-b')
    @button_signup = Element.new(:id, 'signup-b')
    @label_sign_up = Element.new(:xpath, '//div[@id = "signup"]/descendant::h1[contains(text(), "Sign Up")]')
    @input_signup_email = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "login"]')
    @input_signup_password = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password1"]')
    @input_signup_password_again = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password2"]')
    @input_signup_project_name = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "project_name"]')
    @button_get_started = Element.new(:xpath, '//div[@id = "signup"]/descendant::button[@class = "button-form button-block-form innerButton"]')
    @button_signup_cancel = Element.new(:xpath, '//div[@id = "signup"]/descendant::img[@class = "closecross"]')
    @input_login_email = Element.new(:xpath, '//div[@id = "login"]/descendant::input[@name = "login"]')
    @input_login_password = Element.new(:xpath, '//div[@id = "login"]/descendant::input[@name = "password"]')
    @button_login_form = Element.new(:xpath, '//div[@id = "login"]/descendant::button[@class = "button button-block innerButton"]')
    @label_welcome_back = Element.new(:xpath, '//div[@id = "login"]/descendant::h1[contains(text(), "Welcome Back!")]')
    @error_incorrect_login = Element.new(:xpath, '//div[@class = "alert alert-danger"]/descendant::span[contains(text(), "Username or password is not correct")]')
  end

  def visible?
    @button_start.visible?
    @button_login.visible?
    @button_signup.visible?
  end

  def click_try_now
    @button_start.click
  end

  def enter_signup_passwords(password)
    enter_signup_password(password)
    enter_signup_password_again(password)
  end

  def enter_signup_password(password)
    @input_signup_password.send_keys password
  end

  def enter_signup_password_again(password)
    @input_signup_password_again.send_keys password
  end

  def enter_signup_email(email)
    @input_signup_email.send_keys(email)
  end

  def enter_signup_project_name(name)
    @input_signup_project_name.send_keys name
  end

  def cancel_signup
    @button_signup_cancel.click
  end

  def get_started
    @button_get_started.click
  end

  def submit_signup(user)
    enter_signup_email user.email
    enter_signup_passwords user.password
    enter_signup_project_name user.project_name
    cancel_signup
  end

  def submit_incorrect_signup_no_email(user)
    enter_signup_passwords user.password
    enter_signup_project_name user.project_name
    get_started
  end

  def submit_incorrect_signup_no_passwords(user)
    enter_signup_email user.email
    enter_signup_project_name user.project_name
    get_started
  end

  def signup_dialog
    @label_sign_up.visible?
    @input_signup_email.visible?
    @input_signup_password.visible?
    @input_signup_password_again.visible?
    @input_signup_project_name.visible?
  end

  def click_login
    @button_login.click
  end

  def enter_login_email(email)
    @input_login_email.send_keys email
  end

  def enter_login_password(password)
    @input_login_password.send_keys password
  end

  def click_login_form
    @button_login_form.click
  end

  def success_login(user)
    click_login
    enter_login_email user.email
    enter_login_password user.password
    click_login_form
  end

  def login_dialog
    @label_welcome_back.visible?
    @input_login_email.visible?
    @input_login_password.visible?
  end

  def incorrect_login_details
    @error_incorrect_login.visible?
  end

  def load
    visit('/')
  end
end
