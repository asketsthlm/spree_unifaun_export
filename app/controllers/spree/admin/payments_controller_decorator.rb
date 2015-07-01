Spree::Admin::PaymentsController.class_eval do
  before_action :setPackageWeight, only: :index
  def setPackageWeight
    @packageWeight = Spree::UnifaunExport::Config[:package_weight]
  end

end
