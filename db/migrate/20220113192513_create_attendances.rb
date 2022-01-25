class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.belongs_to :event, foreign_key: true
      t.belongs_to :physician, foreign_key: true

      t.timestamps
    end
  end
end
