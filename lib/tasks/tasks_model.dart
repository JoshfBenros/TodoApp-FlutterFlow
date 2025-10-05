import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'tasks_widget.dart' show TasksWidget;
import 'package:flutter/material.dart';

class TasksModel extends FlutterFlowModel<TasksWidget> {
  ///  Local state fields for this page.

  String? quoteText = ' ';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (ZenQuotes)] action in tasks widget.
  ApiCallResponse? apiResult23d;

  /// Query cache managers for this widget.

  final _zenQuoteCacheManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> zenQuoteCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _zenQuoteCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearZenQuoteCacheCache() => _zenQuoteCacheManager.clear();
  void clearZenQuoteCacheCacheKey(String? uniqueKey) =>
      _zenQuoteCacheManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    /// Dispose query cache managers for this widget.

    clearZenQuoteCacheCache();
  }
}
