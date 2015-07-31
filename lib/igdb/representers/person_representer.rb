module PersonRepresenter
  include Representable::JSON

  property :id # The id of the person.
  property :name # The name of the person.
  property :dob # The day of birth of the person ISO standard is followed.
  property :country # The country of the person in http://en.wikipedia.org/wiki/ISO_3166-1_numeric .
  property :bio # The bio of the person.
  property :slug # Not listed in the API
  property :size # The number of people in the database.
end
