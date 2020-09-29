class CircleCanvasesController < ApplicationController

    def index
        circles = CircleCanvas.all

        render json: circles
    end

    def create
        circleCanvas = CircleCanvas.new(circleCanvas_params)

        if circleCanvas.save
          render json: circleCanvas
        else
          render json: {error: circleCanvas.errors.full_messages}, status: :not_acceptable
        end
    end

    private

    def circleCanvas_params
      params.require(:circle_canvas).permit(:posX, :posY, :dx, :dy, :color, :sound, :z_index, :radius, :scribble_id)
    end
end
