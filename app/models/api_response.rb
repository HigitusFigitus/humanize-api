class ApiResponse
  def self.filterResponders(args)
    # Better: Responder.where("attr = ? AND attr1 = ? ...", value, value1, ...)
    responders = args[:before_param] ? Responder.where(session_id: args[:session_id]).before(args[:before_param]) : Responder.where(session_id: args[:session_id])
    responders = args[:gender_param] ? responders.where(gender: args[:gender_param]) : responders
    if args[:age_group_param]
      case args[:age_group_param]
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
    responders = args[:position_param] ? responders.where(position: args[:position_param]) : responders
  end

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
