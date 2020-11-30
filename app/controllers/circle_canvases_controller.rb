class CircleCanvasesController < ApplicationController

    def index
        circles = CircleCanvas.all

        render json: circles
    end

    def create
        circle_canvas = CircleCanvas.new(circleCanvas_params)

        if circle_canvas.save
          render json: circle_canvas
        else
          render json: {error: circle_canvas.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
      circle_canvas = CircleCanvas.find(params[:id])

      circle_canvas.update(circleCanvas_params)

      render json: circle_canvas
    end

    def destroy
      circle_canvas = CircleCanvas.find(params[:id])

      circle_canvas.destroy

      render json: circle_canvas
    end

    private

    def circleCanvas_params
      params.require(:circle_canvas).permit(:posX, :posY, :dx, :dy, :color, :octave, :note, :z_index, :radius, :scribble_id)
    end
end
