class ComponentsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index


  def index
    @category = Category.find_by(slug: params["category"])
    @components = @category.components.order('rating DESC')
    @computer = Computer.find(params["computer_id"])
    @spec = @computer.specs.find_by(category_id: @category.id)

    save_case_number

    @current_step = Spec::STEPS.index(@category.slug)
    @optional = optional_component?
    session[:new_computer_id] = @computer.id unless current_user
  end

  def update
  end



  protected

  def optional_component?
    !Category::MANDATORIES.include?(Spec::STEPS[@current_step])
  end

  def save_case_number
    @case_number = @computer.specs.where(category_id: 1).first.component&.rating
  end
end
