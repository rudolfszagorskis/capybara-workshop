require 'date'
module Users
    def Users.signup_user
        @signup_user ||= User.new(email: 'test@test.com', password: 'passworddemo')
        @signup_user
    end
end

class User
    attr_reader :email, :password, :project_name
    def initialize(email:, password:)
        @email = email
        @password = password
        @project_name = 'UIAuto' + DateTime.now.strftime('%Q')
    end

end