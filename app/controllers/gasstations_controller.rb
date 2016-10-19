class GasstationsController < ApplicationController
    
    def index
        @gasstations = Gasstation.all
    end
    
    def show
        @gasstation = Gasstation.find(params[:id])
    end
end