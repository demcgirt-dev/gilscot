class BillOfLadingsController < ApplicationController
  
  before_action :set_bill_of_lading, only: [:edit, :update, :show, :destroy]
  
  def index
    @bill_of_ladings = BillOfLading.all
  end
  
  def new
    @bill_of_lading = BillOfLading.new
  end
  
  def edit
  end
  
  def update
    if @bill_of_lading.update(bill_of_lading_params)
      flash[:success] = "Bill of lading was successfully updated"
      redirect_to bill_of_lading_path(@bill_of_lading)
    else
      render :edit
    end
  end
  
  def create
    @bill_of_lading = BillOfLading.new(bill_of_lading_params)
    
    if @bill_of_lading.valid? && @bill_of_lading.save
      flash[:success] = "Bill of lading was successfully created"
      redirect_to bill_of_lading_path(@bill_of_lading)
      
    else
      render :new
    end
  end
  
  def show
  end
  
  def destroy
    @bill_of_lading.destroy
    flash[:notice] = "Bill of lading has been deleted"
    redirect_to bill_of_ladings_path
  end

  private
    def set_bill_of_lading
      @bill_of_lading = BillOfLading.find(params[:id])
    end
    
    def bill_of_lading_params
      params.require(:bill_of_lading).permit(:shipper, :document_number, :export_references, :consignee, :destination_agent, :notify_party, :export_instructions, :place_of_receipt, :ocean_carrier)
    end
end