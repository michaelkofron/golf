class TeesController < ApplicationController

    def create
        tee = Tee.create(name: params[:name], hole_id: params[:holeId], rating: params[:rating], slope: params[:slope], distance: params[:distance])

        if tee.id
            render json: {done: true, tee_id: tee.id}
        else
            render json: {done: false}
        end
    end
end