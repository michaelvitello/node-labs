class SpecsController < ApplicationController

  def show
  end

  def new
  end

  def update
    @spec = Spec.find(params[:id])
    if @spec.update(spec_params)
      if @spec.category.slug == "cases"
        redirect_to computer_components_path(@spec.computer, category: "motherboards")
      elsif @spec.computer.is_computer_completed?
        redirect_to computer_path(@spec.computer)
      else
        redirect_to computer_path(@spec.computer)
      end
    else
      redirect_to computer_components_path(@spec.computer, category: @spec.category.slug)
    end
  end

  def edit
  end

  def destroy
    @spec = Spec.find(params[:id])
    @spec.destroy
    redirect_to computer_path(params[:computer_id])
  end

  protected

  def spec_params
    params.require(:spec).permit(:component_id)
  end

end
