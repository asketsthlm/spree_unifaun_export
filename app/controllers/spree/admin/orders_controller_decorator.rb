Spree::Admin::OrdersController.class_eval do
  before_action :unifaunExport
  before_action :setPackageWeight

  def unifaunExport
    @packageWeight = Spree::UnifaunExport::Config[:package_weight]
    @senderQuickID = Spree::UnifaunExport::Config[:sender_quick_id]
    @contents = Spree::UnifaunExport::Config[:contents]
  end

  def setPackageWeight
    puts 'Package Weight'
    @packageWeight = Spree::UnifaunExport::Config[:package_weight]
  end
end
