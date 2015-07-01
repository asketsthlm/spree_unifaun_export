Spree::Admin::Orders::CustomerDetailsController.class_eval do
  before_action :setPackageWeight, only: :show
  def setPackageWeight
    @packageWeight = Spree::UnifaunExport::Config[:package_weight]
  end

end
