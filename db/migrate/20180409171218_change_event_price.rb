class ChangeEventPrice < ActiveRecord::Migration[5.0]
  def change
  	reversible do |dir|
      change_table :events do |t|
        dir.up   { t.change :price, :string }
        dir.down { t.change :price, :integer }
      end
    end
  end
end
