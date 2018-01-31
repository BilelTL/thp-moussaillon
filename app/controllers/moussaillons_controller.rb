class MoussaillonsController < ApplicationController
  def index
  	@moussaillons = Moussaillon.all
  end
  
  def new
  	@moussaillon =Moussaillon.new
  end
  
  def show
  	@moussaillon = Moussaillon.find(params[:id])
  end
  
  def edit
  	@moussaillon = Moussaillon.find(params[:id])
  end
  
  def create
  	@moussaillon = Moussaillon.create(moussaillon_params)
  	if @moussaillon.save
  		redirect_to @moussaillon
  	else
  		render 'new'
  	end
  end
  
  def update
  	@moussaillon = Moussaillon.find(params[:id])
  	if @moussaillon.update(moussaillon_params)
  		redirect_to @moussaillon
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@moussaillon = Moussaillon.find(params[:id])
  	@moussaillon.destroy
  	redirect_to @moussaillon
  end

  private

  def moussaillon_params
  	params.require(:moussaillon).permit(:first_name, :age, :likeness)
  	end 
end
