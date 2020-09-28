class CircleCanvasesController < ApplicationController

    def index
        circles = CircleCanvas.all

        render json: circles
    end
end
