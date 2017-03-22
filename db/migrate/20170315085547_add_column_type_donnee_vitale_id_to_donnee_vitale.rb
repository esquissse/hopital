class AddColumnTypeDonneeVitaleIdToDonneeVitale < ActiveRecord::Migration[5.0]
  def change
    add_column :donnees_vitales, :type_donnee_vitale_id, :integer
  end
end
