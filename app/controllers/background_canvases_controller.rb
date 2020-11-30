class BackgroundCanvasesController < ApplicationController

    def index
        background_canvases = BackgroundCanvas.all

        render json: background_canvases
    end

    def create
        background = BackgroundCanvas.new(background_params)

        if background.save
          render json: background
        else
          render json: {error: background.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
      background = BackgroundCanvas.find(params[:id])

      background.update(background_params)

      render json: background
    end

    private

    def background_params
        params.require(:background_canvas).permit(:background_style, :z_index, :scribble_id)
    end
end
