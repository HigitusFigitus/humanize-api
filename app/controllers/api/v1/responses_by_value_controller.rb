class Api::V1::ResponsesByValueController < ApplicationController
  def index
    responses = Response.by_value(params[:value])
    render json: { status: "SUCCESS", message: "Loaded responses by value", data: responses }, status: :ok
  end
end
