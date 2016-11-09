class Api::V1::RespondersController < ApplicationController

  def index
    if params[:before] || params[:gender] || params[:age_group] || params[:position]
      p params
      p params[:age_group]
      responders = ApiResponse.filterResponders(
        {
          session_id:      params[:session_id],
          before_param:    params[:before],
          gender_param:    params[:gender],
          age_group_param: params[:age_group],
          position_param:  params[:position]
        }
      )

      data = ApiResponse.buildRespondersJson(responders)
      render json: ApiResponse.createResponse(request, data)
    else
      responders = Responder.where(session_id: params[:session_id])
      data = ApiResponse.buildRespondersJson(responders)
      render json: ApiResponse.createResponse(request, data)
    end # ends if checking for params
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
      render json: @responder.errors, status: :unprocessable_entity
    end
  end

  def responder_params
    params.require(:responder).permit(:age, :position, :gender, :before, :session_id)
  end
end
