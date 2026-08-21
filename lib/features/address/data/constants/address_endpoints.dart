class AddressEndpoints {
  const AddressEndpoints._();

  static const list = '/api/v1/customer/addresses/list';
  static const add = '/api/v1/customer/addresses/add';
  static String edit(int id) => '/api/v1/customer/addresses/edit/$id';
}
