class CreateDocteurs < ActiveRecord::Migration[5.0]
  def change
    create_table :docteurs do |t|
      t.string :nom_usage
      t.string :prenom_usage
      t.string :nom_naissance
      t.string :adeli
      t.string :rpps
      t.string :photo

      t.timestamps
    end
  end
end
