class OrdersController < ApplicationController

  def show
    @order = Order.where(state: 'paid').find(params[:id])
  end

  def create
    computer = Computer.find(params[:computer_id])
    order = Order.new(computer_id: computer.id, amount: computer.price, state: 'pending')
    if order.save
      redirect_to new_computer_order_payment_path(computer.id, order.id)
    else
      # render "show", :alert => 'Your computer is not completed!'
      flash[:alert] = "Your computer is not completed"
      redirect_to computer_path(computer.id)
    end
  end

end
