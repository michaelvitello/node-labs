
class PaymentsController < ApplicationController
   before_action :set_order

  def new
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,
      amount:       @order.amount_cents,
      description:  "Payment for computer #{@order.computer_sku} for order #{@order.id}",
      currency:     "AUD"
    )

    @order.update(payment: charge.to_json, state: 'paid')
    redirect_to order_path(@order)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    render :new
  end


private

  def set_order
    @order = Order.where(state: 'pending').find(params[:order_id])
    @computer = @order.computer
  end

end
