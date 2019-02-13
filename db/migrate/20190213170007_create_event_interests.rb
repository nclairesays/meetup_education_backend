class CreateEventInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :event_interests do |t|
      t.belongs_to :interest, foreign_key: true
      t.belongs_to :event, foreign_key: true

      t.timestamps
    end
  end
end
