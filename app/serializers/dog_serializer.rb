class DogSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :age, :location, :description, :image_url
end
