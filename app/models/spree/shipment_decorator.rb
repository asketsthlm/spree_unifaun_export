Spree::Shipment.class_eval do

  def total_weight
    weight = Spree::UnifaunExport::Config[:package_weight].to_f
    self.inventory_units.each do |iu|
      weight += iu.variant.weight
    end
    return weight.to_i
  end

  def tracking_status
    if self.tracking
      html = Rails.cache.fetch(self.tracking, :expires_in => 3.hours) do
        open("http://asketsthlm.aftership.com/"+self.tracking).read
      end
      return Nokogiri::HTML(html).css('div#tracking_status div div div div div')[0].text
    else
      return "Not tracked"
    end
  end

end
