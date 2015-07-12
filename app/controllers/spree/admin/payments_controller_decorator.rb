Spree::Admin::PaymentsController.class_eval do
  before_action :setPackageWeight
  def setPackageWeight
    @packageWeight = Spree::UnifaunExport::Config[:package_weight]
  end

end
