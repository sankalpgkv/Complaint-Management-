class CreateComplaintLists < ActiveRecord::Migration[5.2]
  def change
    create_table :complaint_lists do |t|
      t.string :title
      t.text :description
      t.text :status

      t.timestamps
    end
  end
end
