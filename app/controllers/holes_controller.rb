class HolesController < ApplicationController
    

    def create
        #user = User.find_by(key: params[:key])

        hole = Hole.create(course_id: params[:courseId], number: params[:number], par: params[:par], hole_name: params[:holeName], mens_handicap: params[:mensHandicap], womens_handicap: params[:womensHandicap])

        if hole.id
            render json: {done: true, hole_id: hole.id}
        else
            render json: {done: false}
        end

    end

end