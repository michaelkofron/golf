class HoleScoresController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        user = User.find_by(key: params[:key])

        hole_score = HoleScore.create(user_id: user.id, hole_id: params[:holeId], round_id: params[:roundId], score: params[:score], start_time: DateTime.now, end_time: DateTime.now)

        hole = Hole.find(params[:holeId])
        PinLocation.create(location_number: params[:pinLocation], hole_id: hole.id)

        if hole_score.id
            render json: {done: true}
        else
            render json: {done: false}
        end
    end
end