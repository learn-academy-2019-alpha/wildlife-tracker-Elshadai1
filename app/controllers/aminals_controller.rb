class AminalsController < ApplicationController
    def index
        @list = Aminal.all
    end    
    
    def show
         @add = Aminal.find(params[:id])
    end    
    
    def new
        @add = Aminal.new
    end
    
    def create
    @add = Aminal.new(add_params)
    if @add.valid?
        @add.save
        redirect_to new_aminal_path
    else
        render action: :new
    end
    end
    
    def edit
         @add = Aminal.find(params[:id])
    end    
    
    def update
        @add = Aminal.find(params[:id])
        @add.update(commonname: params[:commonname], latinname: params[:latinname], kingdom: params[:kingdom])
            redirect_to aminals_path
    end
    
    def destroy
        @add = Aminal.find(params[:id])
        @add.destroy
          redirect_to aminals_path
    end
    
    
    private
    
    def add_params
        params.require(:aminal).permit(:commonname, :latinname, :kingdom)
    end

end
