class OrdersController < ApplicationController

  def show
    @order = Order.where(state: 'paid').find(params[:id])
  end

  def create
    computer = Computer.find(params[:computer_id])
    order  = Order.create!(computer_id: computer.id, amount_cents: computer.price_in_cents, state: 'pending')

    redirect_to new_computer_order_payment_path(computer.id, order.id)
  end

end
