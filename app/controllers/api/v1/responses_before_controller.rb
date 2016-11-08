class Api::V1::RespondersBeforeController < ApplicationController
  def index
    responses = Responder.before(params[:before])
    render json: { status: "SUCCESS", message: "Loaded responders from pre-survey", data: responses }, status: :ok
  end
end