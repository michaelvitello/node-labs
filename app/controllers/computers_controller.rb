class ComputersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create, :show]
  before_action :set_computers, only: [:show, :destroy]

  def index
    @computers = current_user.clear_dummy_computers!
  end

  def show
    @computer = Computer.find(params[:id])
    session[:new_computer_id] = @computer.id
  end

  def new
  end

  def create
    all_game_categories = GameCategory.all.pluck(:name).map { |gc| gc.downcase }

    if params[:game_category] && all_game_categories.include?(params[:game_category])
      session[:user_game_category] = params[:game_category]
    else
      session[:user_game_category] = ""
    end

    redirect_to computer_components_path(Computer.create(user: current_user))
  end

  def edit
  end

  def update
  end

  def destroy
    redirect_to computer_path(@computer.destroy)
  end

  protected

  def set_computers
    @computer = Computer.find(params[:id])
  end
end
