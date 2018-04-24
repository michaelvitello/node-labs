class ComponentsController < ApplicationController
  def index
    @components = Category.find_by(slug: params["category"]).components
    @computer = Computer.find(params["computer_id"])
    @spec = Spec.new
  end


end
