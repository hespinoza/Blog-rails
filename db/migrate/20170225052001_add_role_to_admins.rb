class AddRoleToAdmins < ActiveRecord::Migration
  def change
  	add_column :admins, :role, :string  
  	add_column :admins, :name, :string  
  	add_column :admins, :lastname, :string  
  	add_column :admins, :avatar, :string  
  	add_column :admins, :plot, :string  
  end
end
