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
    self.line_items.each do |li|
      reference << "#{li.quantity} #{li.variant.sku}, "
    end
    return reference.slice!(1..-2)
  end

end
