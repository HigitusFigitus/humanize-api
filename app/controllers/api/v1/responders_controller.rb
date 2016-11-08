class Api::V1::RespondersController < ApplicationController

  def index
    if params[:before]
      responders = Responder.before(params[:before])
      data = ApiResponse.buildRespondersJson(responders)
      render json: ApiResponse.createResponse(request, data)
    else
      responders = Responder.all
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
      render json: @responder, status: :created
    else
      render json: @responders.errors, status: :unprocessable_entity
    end
  end

  def responder_params
    params.require(:responder).permit(:age, :position, :gender, :presurvey, :session_id)
  end
end
