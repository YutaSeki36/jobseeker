class AddClotheToEvent < ActiveRecord::Migration
  def change
    add_column :events, :clothe, :string
  end
end
