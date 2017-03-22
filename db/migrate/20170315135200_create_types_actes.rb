class CreateTypesActes < ActiveRecord::Migration[5.0]
  def change
    create_table :types_actes do |t|
      t.string :libelle
      t.float :cout

      t.timestamps
    end
  end
end
