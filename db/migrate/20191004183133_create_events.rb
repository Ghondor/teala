class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.date :date_event
      t.time :time_event

      t.timestamps
    end
  end
end
