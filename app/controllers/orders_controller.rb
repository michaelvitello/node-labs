class OrdersController < ApplicationController

  def show
    @order = Order.where(state: 'paid').find(params[:id])
    @computer = @order.computer
  end

  def create
    computer = Computer.find(params[:computer_id])
    computer.build_order(amount: computer.total_price, state: 'pending')

    if computer.save
      redirect_to new_order_payment_path(computer.order)
    else
      # render "show", :alert => 'Your computer is not completed!'
      flash[:alert] = "Your computer is not completed"
      redirect_to computer_path(computer.id)
    end
  end

end
