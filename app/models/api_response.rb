class ApiResponse
  def self.createResponse(request, data)
    {
      url: request.fullpath,
      data: data
    }.to_json
  end
end