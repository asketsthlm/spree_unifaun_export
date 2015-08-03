Spree::Shipment.class_eval do

  def total_weight
    weight = Spree::UnifaunExport::Config[:package_weight].to_f
    self.inventory_units.each do |iu|
      weight += iu.variant.weight
    end
    return weight.to_i
  end

end
