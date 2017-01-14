class CreateRenamePasswordToHashedPasswords < ActiveRecord::Migration[5.0]
  def change
    create_table :rename_password_to_hashed_passwords do |t|
	rename_column :clients, :password, :hashed_password
      t.timestamps
    end
  end
end
