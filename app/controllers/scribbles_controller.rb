class ScribblesController < ApplicationController

    def index
        scribbles = Scribble.all

        render json: scribbles
    end
end
