class ChargesController < ApplicationController
  def new
  end
  
  def create
    # Before the rescue, at the beginning of the method
    @stripe_amount = 500  
    begin
      customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
      })
      charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @stripe_amount,
      description: "Achat d'un produit",
      currency: 'eur',
      })

      @attendance = Attendance.new
      @attendance.stripe_customer_id = charge.customer
      puts "@@@@@@@@@@@@@@@"
      puts @attendance.stripe_customer_id
      puts "@@@@@@@@@@@@@@@"
      @attendance.event = @event
      @attendance.attendee = @attendee
      @attendance.save

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_order_path
    end
# After the rescue, if the payment succeeded_pat
  end

end