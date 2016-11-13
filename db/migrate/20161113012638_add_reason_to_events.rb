class AddReasonToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :reason, :string
  end
end
