class AddFullNameToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :full_name, :string
  end
end
