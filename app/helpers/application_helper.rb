module ApplicationHelper

  def inclination(url)
    require 'net/http'
    require 'uri'

    parsed_url = URI.parse(url)
    response = Net::HTTP.get_response(parsed_url)

    re = response.body

    jp = JSON.parse(re)['message']


  end

end
