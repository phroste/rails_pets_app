class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :pet_name
      t.string :pet_specie
      t.string :pet_image

      t.belongs_to :owner, index: true
      # t.timestamps
    end
  end
end
