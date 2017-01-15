class AddPreparationToJuices < ActiveRecord::Migration[5.0]
  def change
    add_column :juices, :preparation, :text
  end
end
