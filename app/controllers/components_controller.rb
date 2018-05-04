class ComponentsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    params["category"] ||= Spec::STEPS.values.first

    @category = Category.find_by(slug: params["category"])
    @components = @category.components.order('rating DESC')
    @computer = Computer.find_by(id: params["computer_id"])

    redirect_to root_path and return unless @computer

    @spec = @computer.specs.find_by(category_id: @category.id)

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
end
