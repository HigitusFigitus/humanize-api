class Api::V1::RespondersController < ApplicationController

  def index
    if params[:before] || params[:gender] || params[:age_group] || params[:position]
      responders = params[:before] ? Responder.where(session_id: params[:session_id]).before(params[:before]) : Responder.where(session_id: params[:session_id])
      responders = params[:gender] ? responders.where(gender: params[:gender]) : responders
      if params[:age_group]
        case params[:age_group]
        when 1
          responders = responders.where("age > ?", 17).where("age < ?", 26)
        when 2
          responders = responders.where("age > ?", 25).where("age < ?", 41)
        when 3
          responders = responders.where("age > ?", 40).where("age < ?", 66)
        when 4
          responders = responders.where("age > ?", 64)
        end # ends case
      end # ends if age_group
      responders = params[:position] ? responders.where(position: params[:position]) : responders

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
      render json: @responders.errors, status: :unprocessable_entity
    end
  end

  def responder_params
    params.require(:responder).permit(:age, :position, :gender, :presurvey, :session_id)
  end
end
