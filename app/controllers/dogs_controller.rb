class DogsController < ApplicationController
    def index
        dogs = Dog.all 
        render json: DogSerializer.new(dogs)
    end 
    def show
        dog = Dog.find(params[:id])
        render json: DogSerializer.new(dog)
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
    def destroy
        dog = Dog.find(params[:id])
        dog.destroy
        render json: {message: "Successfully deleted #{dog.name}!"}
    end 
    def update
        dog = Dog.find(params[:id])
        dog.update(dog_params)
        render json: DogSerializer.new(dog)
    end 




    private 
    def dog_params
        params.require(:dog).permit(:name, :age, :image_url, :description, :location, :email, :breed)
    end
    def set_breed
        @breed = Breed.find_by(id: params[:id])
    end 
end
