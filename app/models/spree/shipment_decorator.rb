Spree::Shipment.class_eval do

  def total_weight
    weight = Spree::UnifaunExport::Config[:box_weight].to_f
    self.inventory_units.each do |iu|
      weight += iu.variant.weight
    end
    return weight.to_i
  end

  def unifaun_reference
    reference = ""
    self.inventory_units.each do |iu|
      reference << "#{iu.quantity} #{iu.variant.sku}, "
    end
    return reference.slice!(1..-2)
  end

end
