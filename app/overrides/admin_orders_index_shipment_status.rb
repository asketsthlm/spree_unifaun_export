Deface::Override.new(
  virtual_path: 'spree/admin/orders/index',
  name: 'status_order_index_thead',
  insert_after: 'erb[loud]:contains("I18n.t(:total, :scope => \'activerecord.attributes.spree/order\')")',
  text: '
  <th>Shp Status</th>
'
)
Deface::Override.new(
  virtual_path: 'spree/admin/orders/index',
  name: 'status_order_index_tbody',
  insert_before: 'td.actions.actions-1',
  text: '
  <td><%= order.shipments ? order.shipments.first.tracking_status : "" %></td>
'
)
