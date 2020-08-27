class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.belongs_to :breed
      t.integer :age
      t.string :location
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
