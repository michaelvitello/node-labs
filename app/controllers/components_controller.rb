class ComponentsController < ApplicationController
  def index
  @components = Component.all
  raise
  end


end
