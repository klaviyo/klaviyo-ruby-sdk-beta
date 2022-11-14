=begin
#Klaviyo API (Beta)

#The Klaviyo REST API. Please visit https://developers.klaviyo.com for more details.

The version of the OpenAPI document: 2022-11-14.pre
Contact: developers@klaviyo.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module KlaviyoBeta
  class DatasApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Data Privacy Deletion Job
    # Request a data privacy-compliant deletion for the person record corresponding to email address, phone number or person identifier<br><br>*Rate limits*:<br>Burst: `3/s`<br>Steady: `60/m`  **Scopes:** `Data Privacy Write`
    # @param data_privacy_create_deletion_job_query [DataPrivacyCreateDeletionJobQuery] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_data_privacy_deletion_job(data_privacy_create_deletion_job_query, opts = {})
      create_data_privacy_deletion_job_with_http_info(data_privacy_create_deletion_job_query, opts)
      nil
    end

    # Create Data Privacy Deletion Job
    # Request a data privacy-compliant deletion for the person record corresponding to email address, phone number or person identifier&lt;br&gt;&lt;br&gt;*Rate limits*:&lt;br&gt;Burst: &#x60;3/s&#x60;&lt;br&gt;Steady: &#x60;60/m&#x60;  **Scopes:** &#x60;Data Privacy Write&#x60;
    # @param data_privacy_create_deletion_job_query [DataPrivacyCreateDeletionJobQuery] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_data_privacy_deletion_job_with_http_info(data_privacy_create_deletion_job_query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DatasApi.create_data_privacy_deletion_job ...'
      end
      # verify the required parameter 'data_privacy_create_deletion_job_query' is set
      if @api_client.config.client_side_validation && data_privacy_create_deletion_job_query.nil?
        fail ArgumentError, "Missing the required parameter 'data_privacy_create_deletion_job_query' when calling DatasApi.create_data_privacy_deletion_job"
      end
      # resource path
      local_var_path = '/api/data-privacy-deletion-jobs/'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # klaviyo api revision
      header_params['revision'] =  ENV['API_REVISION'] || "2022-11-14.pre"
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(data_privacy_create_deletion_job_query)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['Klaviyo-API-Key']

      new_options = opts.merge(
        :operation => :"DatasApi.create_data_privacy_deletion_job",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DatasApi#create_data_privacy_deletion_job\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
