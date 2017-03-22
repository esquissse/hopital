class CreateTableDocteursServices < ActiveRecord::Migration[5.0]
  def change
    create_table :docteurs_services do |t|
      t.integer :docteur_id
      t.integer :service_id
    end
  end
end
