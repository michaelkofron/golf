class ApplicationController < ActionController::Base
    def test
        @user = User.find(1)

        render "test"
    end
end
