module Roadmap

  def get_roadmap(id)
    response = self.class.get(base_uri("roadmaps/#{id}"), headers: { "authorization" => @auth_token })
    JSON.parse(response.body)
  end

  def get_checkpoint(id)
    response = self.class.get(base_uri("checkpoints/#{id}"), headers: { "authorization" => @auth_token })
    JSON.parse(response.body)
  end
  
end
