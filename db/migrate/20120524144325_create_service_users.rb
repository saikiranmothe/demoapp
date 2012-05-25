class CreateServiceUsers < ActiveRecord::Migration
  def change
    create_table :service_users do |t|
      t.string :name
      t.string :role

      t.timestamps
    end
  end
end
