class ComponentsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index


  def index
    @category = Category.find_by(slug: params["category"])
    @components = @category.components.order('rating DESC')
    @computer = Computer.find(params["computer_id"])
    @spec = @computer.specs.find_by(category_id: @category.id)

    @current_step = Spec::STEPS.index(@category.slug)
    @optional = optional_component?

  end

  def update
  end



  protected

  def optional_component?
    !Category::MANDATORIES.include?(Spec::STEPS[@current_step])
  end
end
