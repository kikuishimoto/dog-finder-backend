class DogsController < ApplicationController
    def index
        dogs = Dog.all 
        render json: dogs
    end 
    def create
        dog = Dog.new(dog_params)
        breed = Breed.find_or_create_by(name: params[:breed])
        dog.breed = breed
        dog.save
        render json: dog
    end



    private 
    def dog_params
        params.require(:dog).permit(:name, :age, :image_url, :description, :location)
    end
    def set_breed
        @breed = Breed.find_by(id: params[:id])
    end 
end
