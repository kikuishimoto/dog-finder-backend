class DogsController < ApplicationController
    def index
        dogs = Dog.all 
        render json: DogSerializer.new(dogs)
    end 
    def create
        dog = Dog.new(dog_params)
        breed = Breed.find_or_create_by(name: params[:breed])
        dog.breed = breed
        if dog.save
            render json: DogSerializer.new(dog)
        else 
            render json: {error: 'could not be created'}
        end 
    end



    private 
    def dog_params
        params.require(:dog).permit(:name, :age, :image_url, :description, :location, :email)
    end
    def set_breed
        @breed = Breed.find_by(id: params[:id])
    end 
end
