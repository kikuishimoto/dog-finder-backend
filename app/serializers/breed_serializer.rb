class BreedSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :dogs
end
