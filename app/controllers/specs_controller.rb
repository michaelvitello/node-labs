class SpecsController < ApplicationController

  def show
  end

  def new
  end

  def create
    computer = Computer.find(params[:computer_id])
    component = Component.find(params[:component_id])
    spec = Spec.create(computer: computer, component: component)
    raise
  end

  def edit
  end

  def update
  end

  def destroy
  end



end
