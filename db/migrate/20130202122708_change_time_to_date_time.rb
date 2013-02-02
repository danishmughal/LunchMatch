class ChangeTimeToDateTime < ActiveRecord::Migration
  def up
  	change_column :lunchslots, :start_time, :datetime
  	remove_column :lunchslots, :day
  end

  def down
  end
end
