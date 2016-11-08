class Api::V1::RespondersController < ApplicationController

  def index
    if params[:before]
      responders = Responder.before(params[:before])
      render json: { status: "SUCCESS", message: "Loaded all responders", data: responders }, status: :ok
    else
      responders = Responder.all
      render json: { status: "SUCCESS", message: "Loaded all responders", data: responders }, status: :ok
    end
  end

  def show

    # p request.methods
    # p "*****************"
    # p request.fullpath

    p responder = Responder.find(params[:id])
    p questions = Response.where(:responder => responder)



    render json: ApiResponse.createResponse(
      request,
        {
          responder: responder,
          questions: questions
        }
      )
    # render json: @responders, status: :ok
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
