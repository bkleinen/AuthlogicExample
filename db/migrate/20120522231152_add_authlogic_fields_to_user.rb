class AddAuthlogicFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :persistence_token, :string

    add_column :users, :crypted_password, :string

  end
end
