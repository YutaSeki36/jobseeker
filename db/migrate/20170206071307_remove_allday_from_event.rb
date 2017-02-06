class RemoveAlldayFromEvent < ActiveRecord::Migration
  def change
    remove_column :events, :allDay, :boolean
  end
end
