class CreateSejours < ActiveRecord::Migration[5.0]
  def change
    create_table :sejours do |t|
      t.datetime :date_debut
      t.datetime :date_fin
      t.integer :patient_id

      t.timestamps
    end
  end
end
