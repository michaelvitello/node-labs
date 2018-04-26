class ComputersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create, :show]
  before_action :set_computers, only: [:show, :destroy]

  def index
    @computers = current_user.computers

  end

  def show
    @computer = Computer.find(params[:id])

    @mandatory_specs = @computer.specs.map {
      |spec| spec if spec.mandatory?
    }.compact
    @optional_specs = @computer.specs.map {
      |spec| spec if !spec.mandatory?
    }.compact

    @specs_with_component = @computer.specs.with_component
    @specs_without_component = @computer.specs.without_component
    session[:new_computer_id] = @computer.id

  end

  def new
  end

  def create
    @computer = Computer.new
    if current_user
      @computer.user = current_user
    end
    @computer.save
    redirect_to computer_components_path(@computer, category: "cases")
  end


  def edit
  end

  def update
  end

  def destroy
    @computer.destroy
    redirect_to computer_path(@computer)
  end

  protected

  def set_computers
    @computer = Computer.find(params[:id])
  end



end
