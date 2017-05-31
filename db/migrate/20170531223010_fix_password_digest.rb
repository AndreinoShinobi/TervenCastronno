class FixPasswordDigest < ActiveRecord::Migration[5.0]
  def change
    remove_column :admins, :password_digest
    remove_column :admins, :salt
    add_column :admins, :password_digest, :string, null:false
  end
end
