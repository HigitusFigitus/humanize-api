class ApiResponse
  def self.buildRespondersJson(responders)
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
  end

  def self.buildResponderJson(responder)
    responder_as_hash = responder.as_json
    responses = Response.where(responder: responder)
    responder_as_hash["responses"] = responses
    responder_as_hash
  end

  def self.createResponse(request, data)
    {
      url: request.fullpath,
      data: data
    }.to_json
  end
end