# Klaviyo Ruby SDK Beta

***Note: If you would like to request beta access to the new APIs, please [fill out this brief form](https://manage.kmail-lists.com/subscriptions/subscribe?a=9BX3wh&g=VSyTC6) and you will be contacted by Klaviyo's product team once the beta release is available.***

- SDK version: 1.0.0
- API revision: 2022-11-14.pre

## Helpful Resources

- [API Reference](https://developers.klaviyo.com/en/v2022-11-14.pre/reference)
- [API Guides](https://developers.klaviyo.com/en/v2022-11-14.pre/docs)
- [Postman Workspace](https://www.postman.com/klaviyo/workspace/klaviyo-developers)

## Design & Approach

This SDK is a thin wrapper around our API. See our API Reference for full documentation on API behavior.

## Organization

This SDK is organized into the following resources:



- Datas



- Flows



- Lists



- Segments



- Tags




# Installation


## Build

To build the Ruby code into a gem:

```shell
gem build klaviyo-api-beta.gemspec
```

Then install the gem locally:

```shell
gem install ./klaviyo-api-beta-1.0.0.gem
```


Finally add this to the Gemfile:

    gem 'klaviyo-api-beta', '~> 1.0.0'

To install directly from rubygems:

```shell
gem install klaviyo-api-beta
```

# Usage Example

### To load the gem

```ruby
# Load the gem
require 'klaviyo-api-beta'

# Setup authorization
KlaviyoBeta.configure do |config|
  config.api_key['Klaviyo-API-Key'] = 'Klaviyo-API-Key your-api-key'
  #config.max_retries = 5 # optional
  #config.max_delay = 60 # optional
end
```

NOTE: 
* The SDK retries on resolvable errors, namely: rate limits (common) and server errors on klaviyo (rare).
* `max_retry` denotes number of attempts the client will make in order to execute the request successfully.
* `max_delay` denotes total delay (in seconds) across all attempts.

### To call the `get_catalog_items` operation:

```ruby
opts = {
  include: ['variants'],
  sort: 'created',
  filter: 'equals(published,false)',
  fields_catalog_item: ['external_id','title']
}

begin
  result = KlaviyoBeta::Catalogs.get_catalog_items(opts)
end
```

# Error Handling

This SDK throws an `ApiException` error when the server returns a non-`2XX` response. 
```ruby
begin
  result = KlaviyoBeta::Catalogs.get_catalog_items(opts)
rescue KlaviyoBeta::ApiError => e
  puts "Error when calling get_catalog_items #{e}"
end
```

# Comprehensive list of Operations & Parameters

_**NOTE:**_
- Organization: Resource groups and operation_ids are listed in alphabetical order, first by Resource name, then by **OpenAPI Summary**. Operation summaries are those listed in the right side bar of the [API Reference](https://developers.klaviyo.com/en/v2022-11-14.pre/reference/get_events).
- For example values / data types, as well as whether parameters are required/optional, please reference the corresponding API Reference link.
- Some args are required for the API call to succeed, the API docs above are the source of truth regarding which params are required.

## Method signatures
- `get` operations can be passed an optional `opts` object (e.g. `get_list_profiles(opts)`).
`opts` describes the available options for fetching data (some operations only support a subset of these or none).
i.e.
```ruby
opts = {
  include: ['variants'],
  sort: '-created',
  filter: 'equals(published,false)',
  page_cursor: 'page_cursor_example',
  fields_catalog_item: ['external_id','title'],
  fields_catalog_variant: ['external_id','title']
}
```
**Note, for parameters that use square brackets such as `page[cursor]` or `fields[catalog-item]` ruby will replace the square brackets `[]` with `_` underscores.

- For `create`, `update` & some `delete` operations (i.e. `create_catalog_item` or `update_catalog_item` or `delete_catalog_category_relationships`)
the `body` object is required in the method signature (i.e. `create_catalog_item(body)`).
```ruby
body = {
  data: {
    type: "catalog-item",
    attributes: {
      external_id: "catalog-item-test",
      title: "Catalog Item Test",
      description: "this is a description",
      url: "http://catalog-item.klaviyo.com",
      published: true
    }
  }
}
KlaviyoBeta::Catalogs.create_catalog_item(body)
```





## Datas


#### [Create Data Privacy Deletion Job](https://developers.klaviyo.com/en/v2022-11-14.pre/reference/create_data_privacy_deletion_job)

```ruby
KlaviyoBeta::Datas.create_data_privacy_deletion_job(body)
```






## Flows


#### [Get Flow Tags](https://developers.klaviyo.com/en/v2022-11-14.pre/reference/get_flow_tags)

```ruby
KlaviyoBeta::Flows.get_flow_tags(flow_id, opts)
```






## Lists


#### [Get List Tags](https://developers.klaviyo.com/en/v2022-11-14.pre/reference/get_list_tags)

```ruby
KlaviyoBeta::Lists.get_list_tags(list_id, opts)
```






## Segments


#### [Get Segment Tags](https://developers.klaviyo.com/en/v2022-11-14.pre/reference/get_segment_tags)

```ruby
KlaviyoBeta::Segments.get_segment_tags(segment_id, opts)
```






## Tags


#### [Create Tag](https://developers.klaviyo.com/en/v2022-11-14.pre/reference/create_tag)

```ruby
KlaviyoBeta::Tags.create_tag(body)
```





#### [Create Tag Group](https://developers.klaviyo.com/en/v2022-11-14.pre/reference/create_tag_group)

```ruby
KlaviyoBeta::Tags.create_tag_group(body)
```





#### [Create Tag Relationships](https://developers.klaviyo.com/en/v2022-11-14.pre/reference/create_tag_relationships)

```ruby
KlaviyoBeta::Tags.create_tag_relationships(id, related_resource, body)
```





#### [Delete Tag](https://developers.klaviyo.com/en/v2022-11-14.pre/reference/delete_tag)

```ruby
KlaviyoBeta::Tags.delete_tag(id)
```





#### [Delete Tag Group](https://developers.klaviyo.com/en/v2022-11-14.pre/reference/delete_tag_group)

```ruby
KlaviyoBeta::Tags.delete_tag_group(id)
```





#### [Delete Tag Relationships](https://developers.klaviyo.com/en/v2022-11-14.pre/reference/delete_tag_relationships)

```ruby
KlaviyoBeta::Tags.delete_tag_relationships(id, related_resource, body)
```





#### [Get Tag](https://developers.klaviyo.com/en/v2022-11-14.pre/reference/get_tag)

```ruby
KlaviyoBeta::Tags.get_tag(id, opts)
```





#### [Get Tag Group](https://developers.klaviyo.com/en/v2022-11-14.pre/reference/get_tag_group)

```ruby
KlaviyoBeta::Tags.get_tag_group(id, opts)
```





#### [Get Tag Group Relationships](https://developers.klaviyo.com/en/v2022-11-14.pre/reference/get_tag_group_relationships)

```ruby
KlaviyoBeta::Tags.get_tag_group_relationships(id, related_resource)
```





#### [Get Tag Groups](https://developers.klaviyo.com/en/v2022-11-14.pre/reference/get_tag_groups)

```ruby
KlaviyoBeta::Tags.get_tag_groups(opts)
```





#### [Get Tag Relationships](https://developers.klaviyo.com/en/v2022-11-14.pre/reference/get_tag_relationships)

```ruby
KlaviyoBeta::Tags.get_tag_relationships(id, related_resource)
```





#### [Get Tags](https://developers.klaviyo.com/en/v2022-11-14.pre/reference/get_tags)

```ruby
KlaviyoBeta::Tags.get_tags(opts)
```





#### [Update Tag](https://developers.klaviyo.com/en/v2022-11-14.pre/reference/update_tag)

```ruby
KlaviyoBeta::Tags.update_tag(id, body)
```





#### [Update Tag Group](https://developers.klaviyo.com/en/v2022-11-14.pre/reference/update_tag_group)

```ruby
KlaviyoBeta::Tags.update_tag_group(id, body)
```





# Appendix

## Per Request API key
```ruby
opts = {
  header_params: {
    'Authorization': 'Klaviyo-API-Key your-api-key',
  },
  debug_auth_names: []
}
 
response = KlaviyoBeta::Catalogs.get_catalog_items(opts)
```
