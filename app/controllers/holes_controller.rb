class HolesController < ApplicationController
    
    skip_before_action :verify_authenticity_token
    
    def create
        #user = User.find_by(key: params[:key])

        hole = Hole.create(course_id: params[:courseId], number: params[:number], par: params[:par], hole_name: params[:holeName], mens_handicap: params[:mensHandicap], womens_handicap: params[:womensHandicap])

        if hole.id
            render json: {done: true, hole_id: hole.id}
        else
            render json: {done: false}
        end

    end

    def info
        course = Course.find(params[:courseId])
        hole = course.holes[params[:holeNumber].to_i - 1]
        tee = hole.tees.find_by(name: params[:teeName])

        render json: {course: course, hole: hole, tee: tee}
    end

end