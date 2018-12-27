class AddColumnUserIdToComplaintLists < ActiveRecord::Migration[5.2]
  def change
    add_column :complaint_lists, :user_id, :integer
  end
end
