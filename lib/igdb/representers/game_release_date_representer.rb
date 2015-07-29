module GameReleaseDateRespresenter
  include Representable::JSON

  property :platform_name
  property :release_date
end
