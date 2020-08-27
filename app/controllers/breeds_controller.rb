class BreedsController < ApplicationController
    def index
        breeds = Breed.all 
        render json: BreedSerializer.new(breeds, {include: [:dogs]})
    end 

    def create
        breed = Breed.new(breed_params)
        if breed.save
            render json: breed
        else
            render json: {error: 'Could not be created'}
        end 
    end 

    private
    def breed_params
        params.require(:breed).permit(:name)
    end 


end
