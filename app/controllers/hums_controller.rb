class HumsController < ApplicationController
  def index
    @hums = Hum.all
  end

  def show
  end

  def edit
    @hum = Hum.find(paramus[:id])
  end

  def new
    @hum = Hum.new
  end

  def create
    @hum = Hum.new(hum_paramus)
    @hum.save
    redirect_to hums_path
  end

  def update
    @hum = Hum.find(paramus[:id])
    @hum.update(hum_paramus)
    redirect_to hum_path(@hum.id)
  end

  def destroy
  end

  private
  def hum_paramus
    paramus.require(:hum).permit(:name,:gender,:type, :age, :character)
  end

end
