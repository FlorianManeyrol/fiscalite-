class AddBestToJuices < ActiveRecord::Migration[5.0]
  def change
    add_column :juices, :best, :boolean
  end
end
