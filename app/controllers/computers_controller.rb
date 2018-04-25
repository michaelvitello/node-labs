class ComputersController < ApplicationController
  def index
    @computers = Computer.all
  end

  def show
    @computer = Computer.find(params[:id])
    @specs_with_component = @computer.specs.with_component
    @specs_without_component = @computer.specs.without_component
  end

  def new
  end

  def create
    @computer = Computer.create!
    redirect_to computer_components_path(@computer, category: "cases")
  end

  def edit
  end

  def update
  end

  def destroy
  end



end
