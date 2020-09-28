class UsersController < ApplicationController

    def sign_in
        user = User.find_by(email: params[:email])

        if user
            user.update_attribute(:key, params[:key])
            render json: {message: "Signed in"}
        else
            User.create(email: params[:email], key: params[:key], name: params[:name])
            render json: {message: "Account created"}
        end
    end

end