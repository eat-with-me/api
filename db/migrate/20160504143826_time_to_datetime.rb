class TimeToDatetime < ActiveRecord::Migration
  def change
    remove_column :orders, :closing_time
    add_column :orders, :closing_time, :datetime
  end
end
