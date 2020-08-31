class DogSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :age, :location, :description, :email, :image_url, :breed, :id, :breed_id
end
