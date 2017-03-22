class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :valeur
      t.integer :type_contact
      t.integer :patient_id

      t.timestamps
    end
  end
end
