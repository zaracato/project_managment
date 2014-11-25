class SetPrecisionCosto < ActiveRecord::Migration
  def change
  	change_column :projects, :cost , :decimal, :precision => 18, :scale => 2
  end
end
