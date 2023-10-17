class CreateNews < ActiveRecord::Migration[7.0]
  def change
    create_table :news do |t|
      t.string :titre
      t.string :description, :null => true
      t.string :image, :null => true

      t.timestamps
    end
  end
end
