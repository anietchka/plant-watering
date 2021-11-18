class ChangeRytmeToRythme < ActiveRecord::Migration[6.1]
  def change
    rename_column :plants, :rytme, :rythm
  end
end
