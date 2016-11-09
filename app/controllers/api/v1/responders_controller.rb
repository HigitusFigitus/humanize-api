class Api::V1::RespondersController < ApplicationController

  def index
    if params[:before]
      responders = Responder.where(session_id: params[:session_id]).before(params[:before])
      data = ApiResponse.buildRespondersJson(responders)
      render json: ApiResponse.createResponse(request, data)
    else
      p params[:session_id]
      responders = Responder.where(session_id: params[:session_id])
      data = ApiResponse.buildRespondersJson(responders)
      render json: ApiResponse.createResponse(request, data)
    end
  end

  def show
    responder = Responder.find(params[:id])
    data = ApiResponse.buildResponderJson(responder)
    render json: ApiResponse.createResponse(request, data)
  end

  def create
     @responder = Responder.new(responder_params)

    if @responder.save
      #format.html {render json: @responder}
      #format.json {render json: @responder}
      #format.js {render json: @responder}
      render json: @responder, status: :created
    else
      render json: @responder.errors, status: :unprocessable_entity
    end
  end

  def responder_params
    params.require(:responder).permit(:age, :position, :gender, :before, :session_id)
  end
end


