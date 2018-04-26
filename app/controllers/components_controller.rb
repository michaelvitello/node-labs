class ComponentsController < ApplicationController
  def index
    @category = Category.find_by(slug: params["category"])
    @components = @category.components.order('rating DESC')
    @computer = Computer.find(params["computer_id"])
    @spec = @computer.specs.find_by(category_id: @category.id)

    @current_step = Spec::STEPS.index(@category.slug)
    @categories_left = Category.all.map(&:slug) - @spec.computer.completed_categories
  end

  def update
  end
end
