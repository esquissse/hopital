class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :IPP
      t.string :nom_usage
      t.string :prenom_usage
      t.string :nom_naissance
      t.date :date_naissance
      t.string :commune_naissance
      t.string :pays_naissance

      t.timestamps
    end
  end
end
