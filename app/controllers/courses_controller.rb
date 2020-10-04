class CoursesController < ApplicationController

    def create
        course = Course.create(name: params[:name], sub_course_name: params[:subName], hole_count: params[:holeCount])

        if course.id
            render json: {done: true, course_id: course.id}
        else
            render json: {done: false}
        end
    end
end