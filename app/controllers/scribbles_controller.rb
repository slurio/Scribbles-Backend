class ScribblesController < ApplicationController

    def index
        scribbles = Scribble.all

        render json: scribbles
    end

    def show
        scribble = Scribble.find(params[:id])

        render json: scribble
    end

    def create
        scribble = Scribble.new(scribble_params)

        if scribble.save
          render json: scribble
        else
          render json: {error: scribble.errors.full_messages}, status: :not_acceptable
        end
    end

    private

    def scribble_params
        params.require(:scribble).permit(:title, :user_id)
    end

end
