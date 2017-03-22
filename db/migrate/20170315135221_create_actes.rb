class CreateActes < ActiveRecord::Migration[5.0]
  def change
    create_table :actes do |t|
      t.datetime :date_heure
      t.integer :type_acte_id

      t.timestamps
    end
  end
end
