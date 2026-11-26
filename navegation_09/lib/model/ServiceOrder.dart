class ServiceOrder {
  final String id;
  final String client;
  final String status;
  final String desc;

  ServiceOrder({
    required this.id,
    required this.client,
    required this.status,
    required this.desc,
  });

  @override
  String toString() =>
      'ServiceOrder(id: $id, client: $client, status: $status, desc: $desc)';
}