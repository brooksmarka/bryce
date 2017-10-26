require "httparty"

class Bryce
  include HTTParty

  def initialize(email, password)

    response = self.class.post(base_uri('sessions'), body: { 'email': email,'password': password})
    puts response

    raise "Invalid email or password" if response.code == 404

    @auth_token = response["auth_token"]

  end

  private

  def base_uri(end_point)
    "https://www.bloc.io/api/v1/#{end_point}"
  end

end
