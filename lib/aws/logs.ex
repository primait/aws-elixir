# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Logs do
  @moduledoc """
  You can use Amazon CloudWatch Logs to monitor, store, and access your log
  files from Amazon Elastic Compute Cloud (Amazon EC2) instances, Amazon
  CloudTrail, or other sources. You can then retrieve the associated log data
  from CloudWatch Logs using the Amazon CloudWatch console, the CloudWatch
  Logs commands in the AWS CLI, the CloudWatch Logs API, or the CloudWatch
  Logs SDK.

  You can use CloudWatch Logs to:

  <ul> <li> **Monitor Logs from Amazon EC2 Instances in Real-time**: You can
  use CloudWatch Logs to monitor applications and systems using log data. For
  example, CloudWatch Logs can track the number of errors that occur in your
  application logs and send you a notification whenever the rate of errors
  exceeds a threshold you specify. CloudWatch Logs uses your log data for
  monitoring; so, no code changes are required. For example, you can monitor
  application logs for specific literal terms (such as
  "NullReferenceException") or count the number of occurrences of a literal
  term at a particular position in log data (such as "404" status codes in an
  Apache access log). When the term you are searching for is found,
  CloudWatch Logs reports the data to a Amazon CloudWatch metric that you
  specify.

  </li> <li> **Monitor Amazon CloudTrail Logged Events**: You can create
  alarms in Amazon CloudWatch and receive notifications of particular API
  activity as captured by CloudTrail and use the notification to perform
  troubleshooting.

  </li> <li> **Archive Log Data**: You can use CloudWatch Logs to store your
  log data in highly durable storage. You can change the log retention
  setting so that any log events older than this setting are automatically
  deleted. The CloudWatch Logs agent makes it easy to quickly send both
  rotated and non-rotated log data off of a host and into the log service.
  You can then access the raw log data when you need it.

  </li> </ul>
  """

  @doc """
  Cancels an export task if it is in `PENDING` or `RUNNING` state.
  """
  def cancel_export_task(client, input, options \\ []) do
    request(client, "CancelExportTask", input, options)
  end

  @doc """
  Creates an `ExportTask` which allows you to efficiently export data from a
  Log Group to your Amazon S3 bucket.

  This is an asynchronous call. If all the required information is provided,
  this API will initiate an export task and respond with the task Id. Once
  started, `DescribeExportTasks` can be used to get the status of an export
  task. You can only have one active (`RUNNING` or `PENDING`) export task at
  a time, per account.

  You can export logs from multiple log groups or multiple time ranges to the
  same Amazon S3 bucket. To separate out log data for each export task, you
  can specify a prefix that will be used as the Amazon S3 key prefix for all
  exported objects.
  """
  def create_export_task(client, input, options \\ []) do
    request(client, "CreateExportTask", input, options)
  end

  @doc """
  Creates a new log group with the specified name. The name of the log group
  must be unique within a region for an AWS account. You can create up to 500
  log groups per account.

  You must use the following guidelines when naming a log group:

  <ul> <li> Log group names can be between 1 and 512 characters long.

  </li> <li> Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-'
  (hyphen), '/' (forward slash), and '.' (period).

  </li> </ul>
  """
  def create_log_group(client, input, options \\ []) do
    request(client, "CreateLogGroup", input, options)
  end

  @doc """
  Creates a new log stream in the specified log group. The name of the log
  stream must be unique within the log group. There is no limit on the number
  of log streams that can exist in a log group.

  You must use the following guidelines when naming a log stream:

  <ul> <li> Log stream names can be between 1 and 512 characters long.

  </li> <li> The ':' colon character is not allowed.

  </li> </ul>
  """
  def create_log_stream(client, input, options \\ []) do
    request(client, "CreateLogStream", input, options)
  end

  @doc """
  Deletes the destination with the specified name and eventually disables all
  the subscription filters that publish to it. This will not delete the
  physical resource encapsulated by the destination.
  """
  def delete_destination(client, input, options \\ []) do
    request(client, "DeleteDestination", input, options)
  end

  @doc """
  Deletes the log group with the specified name and permanently deletes all
  the archived log events associated with it.
  """
  def delete_log_group(client, input, options \\ []) do
    request(client, "DeleteLogGroup", input, options)
  end

  @doc """
  Deletes a log stream and permanently deletes all the archived log events
  associated with it.
  """
  def delete_log_stream(client, input, options \\ []) do
    request(client, "DeleteLogStream", input, options)
  end

  @doc """
  Deletes a metric filter associated with the specified log group.
  """
  def delete_metric_filter(client, input, options \\ []) do
    request(client, "DeleteMetricFilter", input, options)
  end

  @doc """
  Deletes the retention policy of the specified log group. Log events would
  not expire if they belong to log groups without a retention policy.
  """
  def delete_retention_policy(client, input, options \\ []) do
    request(client, "DeleteRetentionPolicy", input, options)
  end

  @doc """
  Deletes a subscription filter associated with the specified log group.
  """
  def delete_subscription_filter(client, input, options \\ []) do
    request(client, "DeleteSubscriptionFilter", input, options)
  end

  @doc """
  Returns all the destinations that are associated with the AWS account
  making the request. The list returned in the response is ASCII-sorted by
  destination name.

  By default, this operation returns up to 50 destinations. If there are more
  destinations to list, the response would contain a `nextToken` value in the
  response body. You can also limit the number of destinations returned in
  the response by specifying the `limit` parameter in the request.
  """
  def describe_destinations(client, input, options \\ []) do
    request(client, "DescribeDestinations", input, options)
  end

  @doc """
  Returns all the export tasks that are associated with the AWS account
  making the request. The export tasks can be filtered based on `TaskId` or
  `TaskStatus`.

  By default, this operation returns up to 50 export tasks that satisfy the
  specified filters. If there are more export tasks to list, the response
  would contain a `nextToken` value in the response body. You can also limit
  the number of export tasks returned in the response by specifying the
  `limit` parameter in the request.
  """
  def describe_export_tasks(client, input, options \\ []) do
    request(client, "DescribeExportTasks", input, options)
  end

  @doc """
  Returns all the log groups that are associated with the AWS account making
  the request. The list returned in the response is ASCII-sorted by log group
  name.

  By default, this operation returns up to 50 log groups. If there are more
  log groups to list, the response would contain a `nextToken` value in the
  response body. You can also limit the number of log groups returned in the
  response by specifying the `limit` parameter in the request.
  """
  def describe_log_groups(client, input, options \\ []) do
    request(client, "DescribeLogGroups", input, options)
  end

  @doc """
  Returns all the log streams that are associated with the specified log
  group. The list returned in the response is ASCII-sorted by log stream
  name.

  By default, this operation returns up to 50 log streams. If there are more
  log streams to list, the response would contain a `nextToken` value in the
  response body. You can also limit the number of log streams returned in the
  response by specifying the `limit` parameter in the request. This operation
  has a limit of five transactions per second, after which transactions are
  throttled.
  """
  def describe_log_streams(client, input, options \\ []) do
    request(client, "DescribeLogStreams", input, options)
  end

  @doc """
  Returns all the metrics filters associated with the specified log group.
  The list returned in the response is ASCII-sorted by filter name.

  By default, this operation returns up to 50 metric filters. If there are
  more metric filters to list, the response would contain a `nextToken` value
  in the response body. You can also limit the number of metric filters
  returned in the response by specifying the `limit` parameter in the
  request.
  """
  def describe_metric_filters(client, input, options \\ []) do
    request(client, "DescribeMetricFilters", input, options)
  end

  @doc """
  Returns all the subscription filters associated with the specified log
  group. The list returned in the response is ASCII-sorted by filter name.

  By default, this operation returns up to 50 subscription filters. If there
  are more subscription filters to list, the response would contain a
  `nextToken` value in the response body. You can also limit the number of
  subscription filters returned in the response by specifying the `limit`
  parameter in the request.
  """
  def describe_subscription_filters(client, input, options \\ []) do
    request(client, "DescribeSubscriptionFilters", input, options)
  end

  @doc """
  Retrieves log events, optionally filtered by a filter pattern from the
  specified log group. You can provide an optional time range to filter the
  results on the event `timestamp`. You can limit the streams searched to an
  explicit list of `logStreamNames`.

  By default, this operation returns as much matching log events as can fit
  in a response size of 1MB, up to 10,000 log events, or all the events found
  within a time-bounded scan window. If the response includes a `nextToken`,
  then there is more data to search, and the search can be resumed with a new
  request providing the nextToken. The response will contain a list of
  `searchedLogStreams` that contains information about which streams were
  searched in the request and whether they have been searched completely or
  require further pagination. The `limit` parameter in the request can be
  used to specify the maximum number of events to return in a page.
  """
  def filter_log_events(client, input, options \\ []) do
    request(client, "FilterLogEvents", input, options)
  end

  @doc """
  Retrieves log events from the specified log stream. You can provide an
  optional time range to filter the results on the event `timestamp`.

  By default, this operation returns as much log events as can fit in a
  response size of 1MB, up to 10,000 log events. The response will always
  include a `nextForwardToken` and a `nextBackwardToken` in the response
  body. You can use any of these tokens in subsequent `GetLogEvents` requests
  to paginate through events in either forward or backward direction. You can
  also limit the number of log events returned in the response by specifying
  the `limit` parameter in the request.
  """
  def get_log_events(client, input, options \\ []) do
    request(client, "GetLogEvents", input, options)
  end

  @doc """
  Creates or updates a `Destination`. A destination encapsulates a physical
  resource (such as a Kinesis stream) and allows you to subscribe to a
  real-time stream of log events of a different account, ingested through
  `PutLogEvents` requests. Currently, the only supported physical resource is
  a Amazon Kinesis stream belonging to the same account as the destination.

  A destination controls what is written to its Amazon Kinesis stream through
  an access policy. By default, PutDestination does not set any access policy
  with the destination, which means a cross-account user will not be able to
  call `PutSubscriptionFilter` against this destination. To enable that, the
  destination owner must call `PutDestinationPolicy` after PutDestination.
  """
  def put_destination(client, input, options \\ []) do
    request(client, "PutDestination", input, options)
  end

  @doc """
  Creates or updates an access policy associated with an existing
  `Destination`. An access policy is an [IAM policy
  document](http://docs.aws.amazon.com/IAM/latest/UserGuide/policies_overview.html)
  that is used to authorize claims to register a subscription filter against
  a given destination.
  """
  def put_destination_policy(client, input, options \\ []) do
    request(client, "PutDestinationPolicy", input, options)
  end

  @doc """
  Uploads a batch of log events to the specified log stream.

  Every PutLogEvents request must include the `sequenceToken` obtained from
  the response of the previous request. An upload in a newly created log
  stream does not require a `sequenceToken`. You can also get the
  `sequenceToken` using `DescribeLogStreams`.

  The batch of events must satisfy the following constraints:

  <ul> <li> The maximum batch size is 1,048,576 bytes, and this size is
  calculated as the sum of all event messages in UTF-8, plus 26 bytes for
  each log event.

  </li> <li> None of the log events in the batch can be more than 2 hours in
  the future.

  </li> <li> None of the log events in the batch can be older than 14 days or
  the retention period of the log group.

  </li> <li> The log events in the batch must be in chronological ordered by
  their `timestamp`.

  </li> <li> The maximum number of log events in a batch is 10,000.

  </li> <li> A batch of log events in a single PutLogEvents request cannot
  span more than 24 hours. Otherwise, the PutLogEvents operation will fail.

  </li> </ul>
  """
  def put_log_events(client, input, options \\ []) do
    request(client, "PutLogEvents", input, options)
  end

  @doc """
  Creates or updates a metric filter and associates it with the specified log
  group. Metric filters allow you to configure rules to extract metric data
  from log events ingested through `PutLogEvents` requests.

  The maximum number of metric filters that can be associated with a log
  group is 100.
  """
  def put_metric_filter(client, input, options \\ []) do
    request(client, "PutMetricFilter", input, options)
  end

  @doc """
  Sets the retention of the specified log group. A retention policy allows
  you to configure the number of days you want to retain log events in the
  specified log group.
  """
  def put_retention_policy(client, input, options \\ []) do
    request(client, "PutRetentionPolicy", input, options)
  end

  @doc """
  Creates or updates a subscription filter and associates it with the
  specified log group. Subscription filters allow you to subscribe to a
  real-time stream of log events ingested through `PutLogEvents` requests and
  have them delivered to a specific destination. Currently, the supported
  destinations are:

  <ul> <li> An Amazon Kinesis stream belonging to the same account as the
  subscription filter, for same-account delivery.

  </li> <li> A logical destination (used via an ARN of `Destination`)
  belonging to a different account, for cross-account delivery.

  </li> <li> An Amazon Kinesis Firehose stream belonging to the same account
  as the subscription filter, for same-account delivery.

  </li> <li> An AWS Lambda function belonging to the same account as the
  subscription filter, for same-account delivery.

  </li> </ul> Currently there can only be one subscription filter associated
  with a log group.
  """
  def put_subscription_filter(client, input, options \\ []) do
    request(client, "PutSubscriptionFilter", input, options)
  end

  @doc """
  Tests the filter pattern of a metric filter against a sample of log event
  messages. You can use this operation to validate the correctness of a
  metric filter pattern.
  """
  def test_metric_filter(client, input, options \\ []) do
    request(client, "TestMetricFilter", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "logs"}
    host = get_host("logs", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "Logs_20140328.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

end
