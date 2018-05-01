class ComputersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create, :show]
  before_action :set_computers, only: [:show, :destroy]

  def index
    @computers = current_user.computers
  end

  def show
    @computer = Computer.find(params[:id])
    session[:new_computer_id] = @computer.id
  end

  def new
  end

  def create
    redirect_to computer_components_path(Computer.create(user: current_user))
  end

  def edit
  end

  def update
  end

  def destroy
    redirect_to computer_path(@computer.destroy)
  end

  protected

  def set_computers
    @computer = Computer.find(params[:id])
  end
end
