class AboutController < ApplicationController
    def index
        @abouts = About.all
    end

    def show
        @abouts = About.find(params[:id])
    end
end
