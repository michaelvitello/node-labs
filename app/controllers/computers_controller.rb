class ComputersController < ApplicationController
  def index
    @computers = Computer.all
  end

  def show
  end

  def new
  end

  def create
    @computer = Computer.create!()
    redirect_to computer_components_path(@computer)
  end

  def edit
  end

  def update
  end

  def destroy
  end



end
