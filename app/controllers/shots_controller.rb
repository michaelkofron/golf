class ShotsController < ApplicationController

    def create
        user = User.find_by(key: params[:key])

        shot = Shot.create(user_id: user.id, hole_id: params[:holeId], round_id: params[:roundId], shot_number: params[:shotNumber], club_selection: params[:clubSelection], latitude: params[:latitude], longitude: params[:longitude])

        if shot.id
            render json: {done: true}
        else
            render json: {done: false}
        end
    end
end