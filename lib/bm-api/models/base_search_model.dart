class BaseSearchModel<T> {
  dynamic totalRecords;
  dynamic currentPage;
  dynamic recordOfPage;
  bool sortAsc;
  String sortBy;
  List<T> result;

  BaseSearchModel(
      {this.totalRecords,
      this.currentPage,
      this.recordOfPage,
      this.sortAsc = false,
      this.sortBy = "",
      this.result = const []});

  BaseSearchModel.fromJson(Map<String, dynamic> json)
      : totalRecords = json['totalRecords'],
        currentPage = json['currentPage'],
        recordOfPage = json['recordOfPage'],
        sortAsc = json['sortAsc'],
        sortBy = json['sortBy'],
        result = List<T>.from(json['result'] ?? []);

  Map<String, dynamic> toJson() => {
        'totalRecords': totalRecords,
        'currentPage': currentPage,
        'recordOfPage': recordOfPage,
        'sortAsc': sortAsc,
        'sortBy': sortBy,
        'result': result,
      };
}
