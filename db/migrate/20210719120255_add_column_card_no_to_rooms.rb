class AddColumnCardNoToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :card_no, :text, array:true, default: []
  end
end