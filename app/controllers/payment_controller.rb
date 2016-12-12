class PaymentController < ApplicationController
  def create
    render json: { status: generate_status }
  end

  def generate_status
    chance(10) ? "reject" : "ok"
  end

  def chance(percentage)
    rand(100) < percentage
  end
end
