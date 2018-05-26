class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :doc_name
      t.string :pat_name
      t.string :diseases

      t.timestamps
    end
  end
end
