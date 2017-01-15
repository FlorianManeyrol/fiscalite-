class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :juices, :description, :ingredient
  end
end
