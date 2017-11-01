module ApplicationHelper


  def logged_in?
    not request.authorization.nil?
  end

  def api_request url, method="get", params={}
    endpoint = "https://dev.hostmypet.fi"
    url = "#{endpoint}#{url}"



    if method == "get"
      uri = URI.parse("#{url}?".concat(params.collect { |k,v| "#{k}=#{CGI::escape(v.to_s)}" }.join('&')))
    elsif method == "post"
      uri = URI.parse(url)
      request = Net::HTTP::Post.new(uri.path)
    elsif method == "put"
      uri = URI.parse(url)
      request = Net::HTTP::Post.new(uri.path)
    elsif method == "delete"
      uri = URI.parse(url)
      request = Net::HTTP::Delete.new(uri.path)
    end

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true

    if method == "get"
      resp =  http.get(uri.request_uri)
      return resp
    else
      request.add_field('Content-Type', 'application/json')

      request.body = params.to_json

      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true

      resp = http.request(request)
      return resp
    end

  end

end
