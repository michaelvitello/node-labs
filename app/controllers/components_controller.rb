class ComponentsController < ApplicationController
  def index
    @category = Category.find_by(slug: params["category"])
    @components = @category.components
    @computer = Computer.find(params["computer_id"])
    @spec = @computer.specs.find_by(category_id: @category.id)
  end

  def update
  end
end
