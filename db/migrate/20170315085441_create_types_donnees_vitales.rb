class CreateTypesDonneesVitales < ActiveRecord::Migration[5.0]
  def change
    create_table :types_donnees_vitales do |t|
      t.string :libelle
      t.string :unite

      t.timestamps
    end
  end
end
