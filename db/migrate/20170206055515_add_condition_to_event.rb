class AddConditionToEvent < ActiveRecord::Migration
  def change
    add_column :events, :condition, :string
  end
end
