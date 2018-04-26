class ComputersController < ApplicationController
  def index
    @computers = Computer.all
  end

  def show
    @computer = Computer.find(params[:id])
    @mandatory_specs = @computer.specs.map {
      |spec| spec if spec.mandatory?
    }.compact
    @optional_specs = @computer.specs.map {
      |spec| spec if !spec.mandatory?
    }.compact
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
