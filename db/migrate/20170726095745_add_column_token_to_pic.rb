class AddColumnTokenToPic < ActiveRecord::Migration
  def change
    add_column :pics,:token,:string
  end
end
