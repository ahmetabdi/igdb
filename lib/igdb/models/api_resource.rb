class Igdb::ApiResource < OpenStruct

  private
  def rebuild_single_resource(resource_from_response)
    self.class::RESOURCE_ATTRIBUTES.each do |resource_attr|
      self.public_send("#{resource_attr}=", resource_from_response.public_send(resource_attr)) if resource_from_response.respond_to?(resource_attr)
    end
    self
  end

  def self.build_single_resource(response, representer)
    self.new.extend(representer).from_hash(response)
  end

  def self.build_collection(resources_from_response, representer)
    resources = []
    resources_from_response.each do |response|
      resources < self.new.extend(representer).from_hash(response)
      # resources << self.build_single_resource(resource_from_response)
    end
    resources
  end
end
