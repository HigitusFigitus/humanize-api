class Api::V1::SessionsController < ApplicationController

  def index
    sessions = Session.all
    render json: { status: "SUCCESS", message: "Loaded all sessions", data: sessions }, status: :ok
  end

  def show
    @session = Session.find(params[:id])
    render json: @session, status: :ok
  end

  def create
     @session = Session.new(session_params)

    if @session.save
      render json: @session, status: :created
    else
      render json: @sessions.errors, status: :unprocessable_entity
    end
  end

  def session_params
    params.require(:session).permit(:date, :topic, :content, :company_id)
  end
end
