class CoursesController < ApplicationController

    skip_before_action :verify_authenticity_token

    def create
        course = Course.create(name: params[:name], sub_course_name: params[:subName], hole_count: params[:holeCount])

        if course.id
            render json: {done: true, course_id: course.id}
        else
            render json: {done: false}
        end
    end

    def get
        courses = Course.last(5)

        render json: courses
    end

    def get_specific
        course = Course.find(params[:id])
        user = User.find_by(key: params[:key])

        round = Round.create(course_id: course.id, user_id: user.id, score: nil, start_time: DateTime.now, end_time: nil)

        render json: {course: course, holes: course.holes, round_id: round.id}
    end
end