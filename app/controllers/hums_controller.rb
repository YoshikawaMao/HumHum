class HumsController < ApplicationController
  def index
    @hums = Hum.all
  end

  def show
  end

  def edit
  end

  def new
  end

  def create
    @hum = Hum.new(hum_paramus)
    @hum.save
    redirect_to hums_path
  end

  def update
  end

  def destroy
  end

  private
  def hum_paramus
    paramus.require(:hum).permit(:name,:gender,:type, :age, :character)
  end

end
