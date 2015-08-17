Deface::Override.new(
  :virtual_path => 'spree/admin/orders/index',
  :name => 'add_unifaun_export_addresses_button',
  :insert_after => "erb[loud]:contains(':simple => true')",
  :text => "
    <div class='form-group pull-right'>
    <%= button_link_to 'Unifaun addresses', admin_orders_path(format: :csv, params: request.query_parameters, template: 'addresses'), class: 'btn-success', :id => 'admin_export_addresses' %>
    </div>
  "
)
Deface::Override.new(
  :virtual_path => 'spree/admin/orders/index',
  :name => 'add_unifaun_export_orders_button',
  :insert_after => "erb[loud]:contains(':simple => true')",
  :text => "
    <div class='form-group pull-right'>
    <%= button_link_to 'Unifaun orders', admin_orders_path(format: :csv, params: request.query_parameters, template: 'orders'), class: 'btn-success', :id => 'admin_export_orders' %>
    </div>
  "
)
