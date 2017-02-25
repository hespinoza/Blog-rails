class ChangeDataTypeForPlot < ActiveRecord::Migration
  def change
  	change_column :admins, :plot, :text
  end
end
