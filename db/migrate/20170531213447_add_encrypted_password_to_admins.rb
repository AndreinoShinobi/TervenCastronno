class AddEncryptedPasswordToAdmins < ActiveRecord::Migration[5.0]
  def change
    rename_column :admins, :password, :encrypted_password
    add_column :admins, :salt, :string
  end
end
