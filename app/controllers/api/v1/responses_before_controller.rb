class Api::V1::ResponsesBeforeController < ApplicationController
  def index
    responses = Response.before(params[:before])
    render json: { status: "SUCCESS", message: "Loaded responses from pre-survey", data: responses }, status: :ok
  end
end