class ComponentsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @components = Category.find_by(slug: params["category"]).components
    @computer = Computer.find(params["computer_id"])
    @spec = Spec.new
  end


end
