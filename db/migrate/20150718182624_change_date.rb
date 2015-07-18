class ChangeDate < ActiveRecord::Migration
  def change
  	rename_column :todos, :date, :completion_date
  end
end
