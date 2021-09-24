class HumsController < ApplicationController
  def index
    @hums = Hum.all
  end

  def show
    @hum = Hum.find(params[:id])
  end

  def edit
    @hum = Hum.find(params[:id])
  end

  def new
    @hum = Hum.new
  end

  def create
    @hum = Hum.new(hum_params)
    @hum.save
    redirect_to hums_path
  end

  def update
    @hum = Hum.find(params[:id])
    @hum.update(hum_params)
    redirect_to hum_path(@hum.id)
  end

  def destroy
  end

  private
  def hum_params
    params.require(:hum).permit(:name, :gender, :breed, :age, :character)
  end

end
