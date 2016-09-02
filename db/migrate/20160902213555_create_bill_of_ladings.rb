class CreateBillOfLadings < ActiveRecord::Migration
  def change
    create_table :bill_of_ladings do |t|

      t.timestamps null: false
    end
  end
end
