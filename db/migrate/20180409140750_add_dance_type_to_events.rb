class AddDanceTypeToEvents < ActiveRecord::Migration[5.0]
  def change
  	add_reference :events, :dance_type, foreign_key: true
  end
end
