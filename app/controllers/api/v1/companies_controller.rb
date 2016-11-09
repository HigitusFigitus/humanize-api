class Api::V1::CompaniesController < ApplicationController

  def index
    if params[:name]
      company = Company.find_by(name: params[:name])
      render json: ApiResponse.createResponse(request, company)
    else
      companies = Company.all
      render json: { status: "SUCCESS", message: "Loaded all companies", data: companies }, status: :ok
    end
  end

  def show
    @company = Company.find(params[:id])
    render json: @company, status: :ok
  end

  def create
     @company = Company.new(company_params)

    if @company.save
      render json: @company, status: :created
    else
      render json: @companies.errors, status: :unprocessable_entity
    end
  end

  def company_params
    params.require(:company).permit(:name)
  end
end