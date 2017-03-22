class CreateDonneesVitales < ActiveRecord::Migration[5.0]
  def change
    create_table :donnees_vitales do |t|
      t.date :date
      t.string :valeur
      t.integer :patient_id

      t.timestamps
    end
  end
end
