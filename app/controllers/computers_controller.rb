class ComputersController < ApplicationController
  skip_before_action :authenticate_user!, only: :create

  def index
    @computers = Computer.all
  end

  def show
  end

  def new
  end

  def create
    @computer = Computer.create
    redirect_to computer_components_path(@computer, category: "cases")

  end

  def edit
  end

  def update
  end

  def destroy
  end



end
