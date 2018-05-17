
class HomePage < BasePage
    attr_accessor :button_start

  def initialize
    @button_sign_up = Element.new(:css, '#signup-b')
    @input_signup_name_login = Element.new(:css, '#signup input[name="login"]')
    @input_signup_name_password1 = Element.new(:css, '#signup input[name="password1"]')
    @input_signup_name_password2 = Element.new(:css, '#signup input[name="password2"]')
    @input_signup_name_project_name = Element.new(:css, '#signup input[name="project_name"]')
    @button_signup_close = Element.new(:css, '#signup .closecross')
    @form_sign_up = Element.new(:css, '#signup')
    @button_login = Element.new(:css, '#login-b')
    @form_login = Element.new(:css, '#login')
    @input_login_name_login = Element.new(:css, '#login input[name="login"]')
    @input_login_name_password = Element.new(:css, '#login input[name="password"]')
    @button_sign_in = Element.new(:css, '#login .innerButton')
    @form_login_errorText = Element.new(:css, "form[action='/login']>.alert.alert-danger>span.errorText")

  end

  def isVisible
    # @button_start.isVisible
    # @input_name_contact_us.isVisible
    @button_sign_up.isVisible
  end

  def load
    visit('/legacy')
  end

  def signup
      @button_sign_up.click
  end

  

  def random_string(length=6)
    chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ0123456789'
    string = ''
    length.times { string << chars[rand(chars.size)] }
    string
  end

  def enterInformationn
    random_string = random_string()
    email = "auto#{random_string}@test.qa"
    password = "auto#{random_string}"
    project_name = "My_project"

    @input_signup_name_login.send_keys(email)
    @input_signup_name_password1.send_keys(password)
    @input_signup_name_password2.send_keys(password)
    @input_signup_name_project_name.send_keys(project_name)

  end

  def close_signup_window
    @button_signup_close.click
   
  end

  # def gg
  #  unless  @form_sign_up.isVisible
  #   raise 'yes'
  #  end
  # end
  def login
    @button_login.click
  end

  def sign_in_window_is_visible
    @form_login.isVisible
  end

  def enterLoginInformation
    random_string = random_string()
    email = "auto#{random_string}@test.qa"
    password = "auto#{random_string}"
    
    @input_login_name_login.send_keys(email)
    @input_login_name_password.send_keys(password)
  end

  def signIn
    @button_sign_in.click
  end

  def errorr
    @form_login_errorText.isVisible
  end

end