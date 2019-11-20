class AddColumnPhotoSkill < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :photo, :string
  end
end
