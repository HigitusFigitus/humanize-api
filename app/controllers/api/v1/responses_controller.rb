class Api::V1::ResponsesController < ApplicationController

  def index
    responses = Response.all
    render json: { status: "SUCCESS", message: "Loaded all responses", data: responses }, status: :ok
  end

  def show
    @response = Response.find(params[:id])
    render json: @response, status: :ok
  end

  def create
     @response = Response.new(response_params)

    if @response.save
      render json: @response, status: :created
    else
      render json: @response.errors, status: :unprocessable_entity
    end
  end

  def response_params
    params.require(:response).permit(:value, :responder_id, :question_id)
  end
end
