class GaspricesController < ApplicationController
    
    def index
        @gasprices = Gasprice.all
    end
    
    def show
        @gasprice = Gasprice.find(params[:id])
    end
    
    def new
        @gasprice = Gasprice.new
    end
    
    def create
        @gasprice = Gasprice.new(gasprice_params)
        @gasprice.gasstation = Gasstation.find(1) #Hard coded Gasstation to be replaced when we have authentication
        
        if @gasprice.save
            flash[:success] = "You successfully created the gas price!"
            redirect_to gasprices_path
        else
            render :new
        end        
    end

end