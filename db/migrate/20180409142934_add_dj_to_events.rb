class AddDjToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :dj, :string
  end
end
