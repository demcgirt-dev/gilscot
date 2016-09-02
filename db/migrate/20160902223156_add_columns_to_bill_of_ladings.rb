class AddColumnsToBillOfLadings < ActiveRecord::Migration
  def change
    add_column :bill_of_ladings, :shipper, :string
    add_column :bill_of_ladings, :document_number, :string
    add_column :bill_of_ladings, :export_references, :string
    add_column :bill_of_ladings, :consignee, :text
    add_column :bill_of_ladings, :destination_agent, :text
    add_column :bill_of_ladings, :notify_party, :text
    add_column :bill_of_ladings, :export_instructions, :string
    add_column :bill_of_ladings, :place_of_receipt, :string
    add_column :bill_of_ladings, :ocean_carrier, :string
  end
end
