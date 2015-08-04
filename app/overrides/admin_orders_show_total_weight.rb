Deface::Override.new(
  :virtual_path => 'spree/admin/orders/_shipment',
  :name => 'display_total_weight',
  :insert_after => "span.shipment-number",
  :text => "&nbsp;<span class='shipment-status'>(<%= shipment.tracking_status %>)</span>&nbsp;<span class='shipment-weight'>(<%= shipment.total_weight %>g)</span>"
)
