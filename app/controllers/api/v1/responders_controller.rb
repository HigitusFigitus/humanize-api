class Api::V1::RespondersController < ApplicationController

  def index
    responders = Responder.all
    render json: { status: "SUCCESS", message: "Loaded all responders", data: responders }, status: :ok
  end

  def show
    @responder = Responder.find(params[:id])
    render json: @responder, status: :ok
  end

  def create
     @responder = Responder.new(responder_params)

    if @responder.save
      render json: @responder, status: :created
    else
      render json: @responders.errors, status: :unprocessable_entity
    end
  end

  def responder_params
    params.require(:responder).permit(:age, :position, :gender, :presurvey, :session_id)
  end
end
