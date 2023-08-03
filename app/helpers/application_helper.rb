module ApplicationHelper

  def inclination(url)
    require 'net/http'
    require 'uri'

    parsed_url = URI.parse(url)
    response = Net::HTTP.get_response(parsed_url)

    re = response.body


    match = re.match(/"message":"(.*?)"/)

    if match
      url = match[1]
      return url
    end

  end

end
