class RoundsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        user = User.find_by(key: params[:key])

        course = Course.find(params[:courseId])

        round = Round.create(course_id: course.id, user_id: user.id, score: 0, start_time: DateTime.now, end_time: nil)

        if round.id
            render json: {done: true, round_id: round.id}
        else
            render json: {done: false}
        end
    end

    def update
        round = Round.find(params[:roundId])

        score = 0

        round.hole_scores.each do |x|
            score += x.score
        end

        round.update_attribute(:end_time, DateTime.now)
        round.update_attribute(:score, score)

        render json: {done: true}
    end
end