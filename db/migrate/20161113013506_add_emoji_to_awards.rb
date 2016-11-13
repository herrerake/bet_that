class AddEmojiToAwards < ActiveRecord::Migration[5.0]
  def change
    add_column :awards, :emoji, :string
  end
end
