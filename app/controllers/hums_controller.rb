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
end
