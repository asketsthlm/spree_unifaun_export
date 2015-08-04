Deface::Override.new(
  virtual_path: 'spree/admin/orders/index',
  name: 'status_order_index_thead',
  insert_before: 'erb[loud]:contains("I18n.t(:email, :scope => \'activerecord.attributes.spree/order\')")',
  text: '
  <th>Shp Status</th>
'
)

Deface::Override.new(
  virtual_path: 'spree/admin/orders/index',
  name: 'status_order_index_tbody',
  insert_before: 'erb[silent]:contains("if order.user")',
  text: '
  <td><%= order.shipments ? order.shipments.first.tracking_status : "" %></td>
'
)
