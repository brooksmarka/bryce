require "httparty"
require "./lib/roadmap.rb"

class Bryce
  include HTTParty
  include Roadmap

  def initialize(email, password)

    response = self.class.post(base_uri("sessions"), body: { 'email': email,'password': password})

    raise "Invalid email or password" if response.code == 404

    @auth_token = response["auth_token"]

  end

  def get_me
    response = self.class.get(base_uri("users/me"), headers: { "authorization" => @auth_token })
    JSON.parse(response.body)
  end

  def get_mentor_availability(id)
    response = self.class.get(base_uri("mentors/#{id}/student_availability"), headers: { "authorization" => @auth_token })
    JSON.parse(response.body)
  end

  def get_messages(page_num=1)
    response = self.class.get(base_uri("message_threads"), body: { page: page_num }, headers: { "authorization" => @auth_token })
    JSON.parse(response.body)
  end

  def create_messages(email, rec_id, subject, body)
    response = self.class.post(base_uri("messages"), body: { "sender": email, "recipient_id": rec_id, "subject": subject, "stripped-text": body }, headers: { "authorization" => @auth_token })
  end

  private

  def base_uri(end_point)
    "https://www.bloc.io/api/v1/#{end_point}"
  end

end
