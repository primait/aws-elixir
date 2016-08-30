# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.DirectoryService do
  @moduledoc """
  AWS Directory Service

  This is the *AWS Directory Service API Reference*. This guide provides
  detailed information about AWS Directory Service operations, data types,
  parameters, and errors.
  """

  @doc """
  If the DNS server for your on-premises domain uses a publicly addressable
  IP address, you must add a CIDR address block to correctly route traffic to
  and from your Microsoft AD on Amazon Web Services. *AddIpRoutes* adds this
  address block. You can also use *AddIpRoutes* to facilitate routing traffic
  that uses public IP ranges from your Microsoft AD on AWS to a peer VPC.
  """
  def add_ip_routes(client, input, options \\ []) do
    request(client, "AddIpRoutes", input, options)
  end

  @doc """
  Adds or overwrites one or more tags for the specified Amazon Directory
  Services directory. Each directory can have a maximum of 10 tags. Each tag
  consists of a key and optional value. Tag keys must be unique to each
  resource.
  """
  def add_tags_to_resource(client, input, options \\ []) do
    request(client, "AddTagsToResource", input, options)
  end

  @doc """
  Creates an AD Connector to connect to an on-premises directory.
  """
  def connect_directory(client, input, options \\ []) do
    request(client, "ConnectDirectory", input, options)
  end

  @doc """
  Creates an alias for a directory and assigns the alias to the directory.
  The alias is used to construct the access URL for the directory, such as
  `http://&lt;alias&gt;.awsapps.com`.

  <important> After an alias has been created, it cannot be deleted or
  reused, so this operation should only be used when absolutely necessary.

  </important>
  """
  def create_alias(client, input, options \\ []) do
    request(client, "CreateAlias", input, options)
  end

  @doc """
  Creates a computer account in the specified directory, and joins the
  computer to the directory.
  """
  def create_computer(client, input, options \\ []) do
    request(client, "CreateComputer", input, options)
  end

  @doc """
  Creates a conditional forwarder associated with your AWS directory.
  Conditional forwarders are required in order to set up a trust relationship
  with another domain. The conditional forwarder points to the trusted
  domain.
  """
  def create_conditional_forwarder(client, input, options \\ []) do
    request(client, "CreateConditionalForwarder", input, options)
  end

  @doc """
  Creates a Simple AD directory.
  """
  def create_directory(client, input, options \\ []) do
    request(client, "CreateDirectory", input, options)
  end

  @doc """
  Creates a Microsoft AD in the AWS cloud.
  """
  def create_microsoft_a_d(client, input, options \\ []) do
    request(client, "CreateMicrosoftAD", input, options)
  end

  @doc """
  Creates a snapshot of a Simple AD or Microsoft AD directory in the AWS
  cloud.

  <note> You cannot take snapshots of AD Connector directories.

  </note>
  """
  def create_snapshot(client, input, options \\ []) do
    request(client, "CreateSnapshot", input, options)
  end

  @doc """
  AWS Directory Service for Microsoft Active Directory allows you to
  configure trust relationships. For example, you can establish a trust
  between your Microsoft AD in the AWS cloud, and your existing on-premises
  Microsoft Active Directory. This would allow you to provide users and
  groups access to resources in either domain, with a single set of
  credentials.

  This action initiates the creation of the AWS side of a trust relationship
  between a Microsoft AD in the AWS cloud and an external domain.
  """
  def create_trust(client, input, options \\ []) do
    request(client, "CreateTrust", input, options)
  end

  @doc """
  Deletes a conditional forwarder that has been set up for your AWS
  directory.
  """
  def delete_conditional_forwarder(client, input, options \\ []) do
    request(client, "DeleteConditionalForwarder", input, options)
  end

  @doc """
  Deletes an AWS Directory Service directory.
  """
  def delete_directory(client, input, options \\ []) do
    request(client, "DeleteDirectory", input, options)
  end

  @doc """
  Deletes a directory snapshot.
  """
  def delete_snapshot(client, input, options \\ []) do
    request(client, "DeleteSnapshot", input, options)
  end

  @doc """
  Deletes an existing trust relationship between your Microsoft AD in the AWS
  cloud and an external domain.
  """
  def delete_trust(client, input, options \\ []) do
    request(client, "DeleteTrust", input, options)
  end

  @doc """
  Removes the specified directory as a publisher to the specified SNS topic.
  """
  def deregister_event_topic(client, input, options \\ []) do
    request(client, "DeregisterEventTopic", input, options)
  end

  @doc """
  Obtains information about the conditional forwarders for this account.

  If no input parameters are provided for RemoteDomainNames, this request
  describes all conditional forwarders for the specified directory ID.
  """
  def describe_conditional_forwarders(client, input, options \\ []) do
    request(client, "DescribeConditionalForwarders", input, options)
  end

  @doc """
  Obtains information about the directories that belong to this account.

  You can retrieve information about specific directories by passing the
  directory identifiers in the *DirectoryIds* parameter. Otherwise, all
  directories that belong to the current account are returned.

  This operation supports pagination with the use of the *NextToken* request
  and response parameters. If more results are available, the
  *DescribeDirectoriesResult.NextToken* member contains a token that you pass
  in the next call to `DescribeDirectories` to retrieve the next set of
  items.

  You can also specify a maximum number of return results with the *Limit*
  parameter.
  """
  def describe_directories(client, input, options \\ []) do
    request(client, "DescribeDirectories", input, options)
  end

  @doc """
  Obtains information about which SNS topics receive status messages from the
  specified directory.

  If no input parameters are provided, such as DirectoryId or TopicName, this
  request describes all of the associations in the account.
  """
  def describe_event_topics(client, input, options \\ []) do
    request(client, "DescribeEventTopics", input, options)
  end

  @doc """
  Obtains information about the directory snapshots that belong to this
  account.

  This operation supports pagination with the use of the *NextToken* request
  and response parameters. If more results are available, the
  *DescribeSnapshots.NextToken* member contains a token that you pass in the
  next call to `DescribeSnapshots` to retrieve the next set of items.

  You can also specify a maximum number of return results with the *Limit*
  parameter.
  """
  def describe_snapshots(client, input, options \\ []) do
    request(client, "DescribeSnapshots", input, options)
  end

  @doc """
  Obtains information about the trust relationships for this account.

  If no input parameters are provided, such as DirectoryId or TrustIds, this
  request describes all the trust relationships belonging to the account.
  """
  def describe_trusts(client, input, options \\ []) do
    request(client, "DescribeTrusts", input, options)
  end

  @doc """
  Disables multi-factor authentication (MFA) with the Remote Authentication
  Dial In User Service (RADIUS) server for an AD Connector directory.
  """
  def disable_radius(client, input, options \\ []) do
    request(client, "DisableRadius", input, options)
  end

  @doc """
  Disables single-sign on for a directory.
  """
  def disable_sso(client, input, options \\ []) do
    request(client, "DisableSso", input, options)
  end

  @doc """
  Enables multi-factor authentication (MFA) with the Remote Authentication
  Dial In User Service (RADIUS) server for an AD Connector directory.
  """
  def enable_radius(client, input, options \\ []) do
    request(client, "EnableRadius", input, options)
  end

  @doc """
  Enables single-sign on for a directory.
  """
  def enable_sso(client, input, options \\ []) do
    request(client, "EnableSso", input, options)
  end

  @doc """
  Obtains directory limit information for the current region.
  """
  def get_directory_limits(client, input, options \\ []) do
    request(client, "GetDirectoryLimits", input, options)
  end

  @doc """
  Obtains the manual snapshot limits for a directory.
  """
  def get_snapshot_limits(client, input, options \\ []) do
    request(client, "GetSnapshotLimits", input, options)
  end

  @doc """
  Lists the address blocks that you have added to a directory.
  """
  def list_ip_routes(client, input, options \\ []) do
    request(client, "ListIpRoutes", input, options)
  end

  @doc """
  Lists all tags on an Amazon Directory Services directory.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Associates a directory with an SNS topic. This establishes the directory as
  a publisher to the specified SNS topic. You can then receive email or text
  (SMS) messages when the status of your directory changes. You get notified
  if your directory goes from an Active status to an Impaired or Inoperable
  status. You also receive a notification when the directory returns to an
  Active status.
  """
  def register_event_topic(client, input, options \\ []) do
    request(client, "RegisterEventTopic", input, options)
  end

  @doc """
  Removes IP address blocks from a directory.
  """
  def remove_ip_routes(client, input, options \\ []) do
    request(client, "RemoveIpRoutes", input, options)
  end

  @doc """
  Removes tags from an Amazon Directory Services directory.
  """
  def remove_tags_from_resource(client, input, options \\ []) do
    request(client, "RemoveTagsFromResource", input, options)
  end

  @doc """
  Restores a directory using an existing directory snapshot.

  When you restore a directory from a snapshot, any changes made to the
  directory after the snapshot date are overwritten.

  This action returns as soon as the restore operation is initiated. You can
  monitor the progress of the restore operation by calling the
  `DescribeDirectories` operation with the directory identifier. When the
  **DirectoryDescription.Stage** value changes to `Active`, the restore
  operation is complete.
  """
  def restore_from_snapshot(client, input, options \\ []) do
    request(client, "RestoreFromSnapshot", input, options)
  end

  @doc """
  Updates a conditional forwarder that has been set up for your AWS
  directory.
  """
  def update_conditional_forwarder(client, input, options \\ []) do
    request(client, "UpdateConditionalForwarder", input, options)
  end

  @doc """
  Updates the Remote Authentication Dial In User Service (RADIUS) server
  information for an AD Connector directory.
  """
  def update_radius(client, input, options \\ []) do
    request(client, "UpdateRadius", input, options)
  end

  @doc """
  AWS Directory Service for Microsoft Active Directory allows you to
  configure and verify trust relationships.

  This action verifies a trust relationship between your Microsoft AD in the
  AWS cloud and an external domain.
  """
  def verify_trust(client, input, options \\ []) do
    request(client, "VerifyTrust", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "ds"}
    host = get_host("ds", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "DirectoryService_20150416.#{action}"}]
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
