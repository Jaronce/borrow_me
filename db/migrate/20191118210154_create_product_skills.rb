class CreateProductSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :product_skills do |t|
      t.references :product, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
