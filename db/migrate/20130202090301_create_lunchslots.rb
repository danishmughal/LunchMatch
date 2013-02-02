class CreateLunchslots < ActiveRecord::Migration
  def change
    create_table :lunchslots do |t|
    	t.integer :user_id
    	t.string :day
    	t.time :start_time
    	t.time :end_time

      t.timestamps
    end
  end
end
