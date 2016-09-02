class BillOfLading < ActiveRecord::Base
  
    validates :shipper, presence: true
    validates :document_number, presence: true
    
end
