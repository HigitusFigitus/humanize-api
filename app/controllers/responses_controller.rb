class ResponsesController < ApplicationController

  def index
    @responses = Response.all

    # Search
    @responses = @responses.search(params[:q]) if params[:q]

    # Filter for relationship
    @responses = @responses.relationship(params[:relationship]) if params[:relationship]

    # Order by
    @responses = @responses.order(params[:order].gsub(':', ' ')) if params[:order]

    # Pagination
    if (params[:offset] && params[:limit])
      @responses = @responses.page(1).per(params[:limit]).padding(params[:offset])
    else
      @responses = @responses.page(1).per(25)
    end


    render json: @responses if stale?(etag: @responses.all, last_modified: @responses.maximum(:updated_at))
  end

  def show
    render json: @response if stale?(@response)
  end

  def create
    @response = Response.new(response_params)

    if @response.save
      render json: @response, status: :created
    else
      render json: @response.errors, status: :unprocessable_entity
    end
  end

  def response_params
      params.require(:response).permit(:value, :responder_id, :question_id)
    end
end
