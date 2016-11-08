class Api::V1::RespondersController < ApplicationController

  def index
    if params[:before]
      responders = Responder.before(params[:before])

      # Convert array of responder objects to array of hashes
      responders_hashes = responders.as_json

      # Iterate through each Responder object in responder variable defined above
        # For each Responder, query the Response model for responses where the responder is the iteratee responder
        # Collect all responses inside of an array
      responses = responders.map {|responder| Response.where(responder: responder)}

      # For each responder hash, insert new key/value pair where key is 'responses' and value is corresponding response from array defined above
      responders_hashes_with_responses = responders_hashes.each_with_index.map do |responder, index|
        responder["responses"] = responses[index]
        responder
      end

      render json: ApiResponse.createResponse(request, responders_hash_with_responses)

      # render json: { status: "SUCCESS", message: "Loaded all responders", data: responders }, status: :ok
    else
      responders = Responder.all
      responders_hashes = responders.as_json
      responses = responders.map {|responder| Response.where(responder: responder)}
      responders_hashes_with_responses = responders_hashes.each_with_index.map do |responder, index|
        responder["responses"] = responses[index]
        responder
      end

      render json: ApiResponse.createResponse(request, responders_hashes_with_responses)
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
