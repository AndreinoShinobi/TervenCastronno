class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :name, null: false
      t.datetime :password, null: false

      t.timestamps
    end
  end
end
