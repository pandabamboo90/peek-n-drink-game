class AddColumnsToRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :cards, :no
    add_column :rooms, :list_cards, :text, array:true, default: []
    rename_column :rooms, :card_no, :card_ids
  end
end
