class RoundsController < ApplicationController

    def create
        user = User.find_by(key: params[:key])

        course = Course.find_by(name: params[:courseName])

        round = Round.create(course_id: course.id, user_id: user.id, score: 0, start_time: DateTime.now, end_time: nil)

        if round.id
            render json: {done: true, round_id: round.id}
        else
            render json: {done: false}
        end
    end
end