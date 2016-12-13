class PaymentController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    puts get_request_params
    render json: { status: generate_status }
  end

  def get_request_params
    request.body.read
  end

  def generate_status
    chance(10) ? "reject" : "ok"
  end

  def chance(percentage)
    rand(100) <= percentage
  end
end
