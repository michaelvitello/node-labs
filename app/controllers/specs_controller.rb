class SpecsController < ApplicationController

  def show
  end

  def new
  end

  def update
    @spec = Spec.find(params[:id])
    if @spec.update(spec_params)
      next_step = get_next_step(@spec.category.slug)
      if next_step == :go_to_computer || params[:finished] == "true"
        redirect_to computer_path(@spec.computer)
      else
        redirect_to computer_components_path(@spec.computer, category: next_step)
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

  def get_next_step(current_slug)
    current_step_number, current_step_name = Spec::STEPS.find { |key, value| value == current_slug }
    if current_step_number >= Spec::STEPS.keys.size
      :go_to_computer
    else
      Spec::STEPS[current_step_number + 1]
    end
  end


  def spec_params
    params.fetch(:spec, {}).permit(:component_id)
  end

end
