class RemoveRefInPosting < ActiveRecord::Migration[5.0]
  def change
    remove_column :postings, :video_id
  end
end
