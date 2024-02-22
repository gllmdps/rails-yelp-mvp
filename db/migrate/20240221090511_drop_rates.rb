class DropRates < ActiveRecord::Migration[7.1]
  def change
    drop_table :rates
  end
end
