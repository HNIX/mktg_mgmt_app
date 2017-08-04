class AddReferencesToActionItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :action_items, :action_item_group, foreign_key: true
  end
end
