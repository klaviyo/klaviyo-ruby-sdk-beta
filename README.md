# Klaviyo Ruby SDK Beta

***Note: If you would like to request beta access to the new APIs, please [fill out this brief form](https://manage.kmail-lists.com/subscriptions/subscribe?a=9BX3wh&g=VSyTC6) and you will be contacted by Klaviyo's product team once the beta release is available.***

- SDK version: 1.0.1.20220907

## Helpful Resources

- [API Reference](https://developers.klaviyo.com/en/reference/beta-api-overview/)
- [API Guides](https://developers.klaviyo.com/en/docs/whats-new-with-beta-apis)

## Design & Approach

This SDK is a thin wrapper around our API. See our API Reference for full documentation on API behavior.

## Organization

This SDK is organized into the following resources:



- Catalogs



- Client



- Events



- Flows



- Lists



- Metrics



- Profiles



- Segments



- Templates




# Installation


## Build

To build the Ruby code into a gem:

```shell
gem build klaviyo_sdk_beta.gemspec
```

Then install the gem locally:

```shell
gem install ./klaviyo_sdk_beta-1.0.1.20220907.gem
```


Finally add this to the Gemfile:

    gem 'klaviyo_sdk_beta', '~> 1.0.1.20220907'

To install directly from rubygems:

```shell
gem install klaviyo_sdk_beta
```

# Usage Example

### To load the gem

```ruby
# Load the gem
require 'klaviyo_sdk_beta'

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
  fields_catalog_item: ['id','title']
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
- Organization: Resource groups and operation_ids are listed in alphabetical order, first by Resource name, then by **OpenAPI Summary**. Operation summaries are those listed in the right side bar of the [API Reference](https://klaviyodocs-group.readme.io/klaviyodocs/reference/api-overview).
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





## Catalogs


#### [Create Catalog Category](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/create_catalog_category)

```ruby
KlaviyoBeta::Catalogs.create_catalog_category(body)
```





#### [Create Catalog Category Relationships](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/create_catalog_category_relationships)

```ruby
KlaviyoBeta::Catalogs.create_catalog_category_relationships(id, related_resource, body)
```





#### [Create Catalog Item](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/create_catalog_item)

```ruby
KlaviyoBeta::Catalogs.create_catalog_item(body)
```





#### [Create Catalog Item Relationships](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/create_catalog_item_relationships)

```ruby
KlaviyoBeta::Catalogs.create_catalog_item_relationships(id, related_resource, body)
```





#### [Create Catalog Variant](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/create_catalog_variant)

```ruby
KlaviyoBeta::Catalogs.create_catalog_variant(body)
```





#### [Delete Catalog Category](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/delete_catalog_category)

```ruby
KlaviyoBeta::Catalogs.delete_catalog_category(id)
```





#### [Delete Catalog Category Relationships](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/delete_catalog_category_relationships)

```ruby
KlaviyoBeta::Catalogs.delete_catalog_category_relationships(id, related_resource, body)
```





#### [Delete Catalog Item](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/delete_catalog_item)

```ruby
KlaviyoBeta::Catalogs.delete_catalog_item(id)
```





#### [Delete Catalog Item Relationships](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/delete_catalog_item_relationships)

```ruby
KlaviyoBeta::Catalogs.delete_catalog_item_relationships(id, related_resource, body)
```





#### [Delete Catalog Variant](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/delete_catalog_variant)

```ruby
KlaviyoBeta::Catalogs.delete_catalog_variant(id)
```





#### [Get Catalog Categories](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_catalog_categories)

```ruby
KlaviyoBeta::Catalogs.get_catalog_categories(opts)
```





#### [Get Catalog Category](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_catalog_category)

```ruby
KlaviyoBeta::Catalogs.get_catalog_category(id, opts)
```





#### [Get Catalog Category Items](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_catalog_category_items)

```ruby
KlaviyoBeta::Catalogs.get_catalog_category_items(category_id, opts)
```





#### [Get Catalog Category Relationships](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_catalog_category_relationships)

```ruby
KlaviyoBeta::Catalogs.get_catalog_category_relationships(id, related_resource, opts)
```





#### [Get Catalog Item](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_catalog_item)

```ruby
KlaviyoBeta::Catalogs.get_catalog_item(id, opts)
```





#### [Get Catalog Item Categories](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_catalog_item_categories)

```ruby
KlaviyoBeta::Catalogs.get_catalog_item_categories(item_id, opts)
```





#### [Get Catalog Item Relationships](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_catalog_item_relationships)

```ruby
KlaviyoBeta::Catalogs.get_catalog_item_relationships(id, related_resource, opts)
```





#### [Get Catalog Item Variants](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_catalog_item_variants)

```ruby
KlaviyoBeta::Catalogs.get_catalog_item_variants(item_id, opts)
```





#### [Get Catalog Items](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_catalog_items)

```ruby
KlaviyoBeta::Catalogs.get_catalog_items(opts)
```





#### [Get Catalog Variant](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_catalog_variant)

```ruby
KlaviyoBeta::Catalogs.get_catalog_variant(id, opts)
```





#### [Get Catalog Variants](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_catalog_variants)

```ruby
KlaviyoBeta::Catalogs.get_catalog_variants(opts)
```





#### [Get Create Categories Job](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_create_categories_job)

```ruby
KlaviyoBeta::Catalogs.get_create_categories_job(job_id, opts)
```





#### [Get Create Categories Jobs](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_create_categories_jobs)

```ruby
KlaviyoBeta::Catalogs.get_create_categories_jobs(opts)
```





#### [Get Create Items Job](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_create_items_job)

```ruby
KlaviyoBeta::Catalogs.get_create_items_job(job_id, opts)
```





#### [Get Create Items Jobs](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_create_items_jobs)

```ruby
KlaviyoBeta::Catalogs.get_create_items_jobs(opts)
```





#### [Get Create Variants Job](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_create_variants_job)

```ruby
KlaviyoBeta::Catalogs.get_create_variants_job(job_id, opts)
```





#### [Get Create Variants Jobs](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_create_variants_jobs)

```ruby
KlaviyoBeta::Catalogs.get_create_variants_jobs(opts)
```





#### [Get Delete Categories Job](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_delete_categories_job)

```ruby
KlaviyoBeta::Catalogs.get_delete_categories_job(job_id, opts)
```





#### [Get Delete Categories Jobs](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_delete_categories_jobs)

```ruby
KlaviyoBeta::Catalogs.get_delete_categories_jobs(opts)
```





#### [Get Delete Items Job](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_delete_items_job)

```ruby
KlaviyoBeta::Catalogs.get_delete_items_job(job_id, opts)
```





#### [Get Delete Items Jobs](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_delete_items_jobs)

```ruby
KlaviyoBeta::Catalogs.get_delete_items_jobs(opts)
```





#### [Get Delete Variants Job](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_delete_variants_job)

```ruby
KlaviyoBeta::Catalogs.get_delete_variants_job(job_id, opts)
```





#### [Get Delete Variants Jobs](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_delete_variants_jobs)

```ruby
KlaviyoBeta::Catalogs.get_delete_variants_jobs(opts)
```





#### [Get Update Categories Job](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_update_categories_job)

```ruby
KlaviyoBeta::Catalogs.get_update_categories_job(job_id, opts)
```





#### [Get Update Categories Jobs](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_update_categories_jobs)

```ruby
KlaviyoBeta::Catalogs.get_update_categories_jobs(opts)
```





#### [Get Update Items Job](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_update_items_job)

```ruby
KlaviyoBeta::Catalogs.get_update_items_job(job_id, opts)
```





#### [Get Update Items Jobs](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_update_items_jobs)

```ruby
KlaviyoBeta::Catalogs.get_update_items_jobs(opts)
```





#### [Get Update Variants Job](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_update_variants_job)

```ruby
KlaviyoBeta::Catalogs.get_update_variants_job(job_id, opts)
```





#### [Get Update Variants Jobs](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_update_variants_jobs)

```ruby
KlaviyoBeta::Catalogs.get_update_variants_jobs(opts)
```





#### [Spawn Create Categories Job](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/spawn_create_categories_job)

```ruby
KlaviyoBeta::Catalogs.spawn_create_categories_job(body)
```





#### [Spawn Create Items Job](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/spawn_create_items_job)

```ruby
KlaviyoBeta::Catalogs.spawn_create_items_job(body)
```





#### [Spawn Create Variants Job](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/spawn_create_variants_job)

```ruby
KlaviyoBeta::Catalogs.spawn_create_variants_job(body)
```





#### [Spawn Delete Categories Job](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/spawn_delete_categories_job)

```ruby
KlaviyoBeta::Catalogs.spawn_delete_categories_job(body)
```





#### [Spawn Delete Items Job](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/spawn_delete_items_job)

```ruby
KlaviyoBeta::Catalogs.spawn_delete_items_job(body)
```





#### [Spawn Delete Variants Job](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/spawn_delete_variants_job)

```ruby
KlaviyoBeta::Catalogs.spawn_delete_variants_job(body)
```





#### [Spawn Update Categories Job](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/spawn_update_categories_job)

```ruby
KlaviyoBeta::Catalogs.spawn_update_categories_job(body)
```





#### [Spawn Update Items Job](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/spawn_update_items_job)

```ruby
KlaviyoBeta::Catalogs.spawn_update_items_job(body)
```





#### [Spawn Update Variants Job](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/spawn_update_variants_job)

```ruby
KlaviyoBeta::Catalogs.spawn_update_variants_job(body)
```





#### [Update Catalog Category](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/update_catalog_category)

```ruby
KlaviyoBeta::Catalogs.update_catalog_category(id, body)
```





#### [Update Catalog Category Relationships](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/update_catalog_category_relationships)

```ruby
KlaviyoBeta::Catalogs.update_catalog_category_relationships(id, related_resource, body)
```





#### [Update Catalog Item](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/update_catalog_item)

```ruby
KlaviyoBeta::Catalogs.update_catalog_item(id, body)
```





#### [Update Catalog Item Relationships](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/update_catalog_item_relationships)

```ruby
KlaviyoBeta::Catalogs.update_catalog_item_relationships(id, related_resource, body)
```





#### [Update Catalog Variant](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/update_catalog_variant)

```ruby
KlaviyoBeta::Catalogs.update_catalog_variant(id, body)
```






## Client


#### [Create Client Event](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/create_client_event)

```ruby
KlaviyoBeta::Client.create_client_event(company_id, body)
```





#### [Create Client Profile](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/create_client_profile)

```ruby
KlaviyoBeta::Client.create_client_profile(company_id, body)
```





#### [Create Client Subscription](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/create_client_subscription)

```ruby
KlaviyoBeta::Client.create_client_subscription(company_id, body)
```






## Events


#### [Create Event](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/create_event)

```ruby
KlaviyoBeta::Events.create_event(body)
```





#### [Get Event](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_event)

```ruby
KlaviyoBeta::Events.get_event(id, opts)
```





#### [Get Event Metrics](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_event_metrics)

```ruby
KlaviyoBeta::Events.get_event_metrics(id, opts)
```





#### [Get Event Profiles](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_event_profiles)

```ruby
KlaviyoBeta::Events.get_event_profiles(id, opts)
```





#### [Get Event Relationships](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_event_relationships)

```ruby
KlaviyoBeta::Events.get_event_relationships(id, related_resource)
```





#### [Get Events](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_events)

```ruby
KlaviyoBeta::Events.get_events(opts)
```






## Flows


#### [Get Flow](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_flow)

```ruby
KlaviyoBeta::Flows.get_flow(id, opts)
```





#### [Get Flow Action](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_flow_action)

```ruby
KlaviyoBeta::Flows.get_flow_action(id, opts)
```





#### [Get Flow Action Flow](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_flow_action_flow)

```ruby
KlaviyoBeta::Flows.get_flow_action_flow(action_id, opts)
```





#### [Get Flow Action Messages](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_flow_action_messages)

```ruby
KlaviyoBeta::Flows.get_flow_action_messages(action_id, opts)
```





#### [Get Flow Action Relationships](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_flow_action_relationships)

```ruby
KlaviyoBeta::Flows.get_flow_action_relationships(id, related_resource, opts)
```





#### [Get Flow Flow Actions](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_flow_flow_actions)

```ruby
KlaviyoBeta::Flows.get_flow_flow_actions(flow_id, opts)
```





#### [Get Flow Message](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_flow_message)

```ruby
KlaviyoBeta::Flows.get_flow_message(id, opts)
```





#### [Get Flow Message Action](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_flow_message_action)

```ruby
KlaviyoBeta::Flows.get_flow_message_action(message_id, opts)
```





#### [Get Flow Message Relationships](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_flow_message_relationships)

```ruby
KlaviyoBeta::Flows.get_flow_message_relationships(id, related_resource)
```





#### [Get Flow Relationships](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_flow_relationships)

```ruby
KlaviyoBeta::Flows.get_flow_relationships(id, related_resource, opts)
```





#### [Get Flows](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_flows)

```ruby
KlaviyoBeta::Flows.get_flows(opts)
```





#### [Update Flow](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/update_flow)

```ruby
KlaviyoBeta::Flows.update_flow(id, body)
```






## Lists


#### [Create List](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/create_list)

```ruby
KlaviyoBeta::Lists.create_list(body)
```





#### [Add Profile to List](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/create_list_relationships)

```ruby
KlaviyoBeta::Lists.create_list_relationships(id, related_resource, body)
```





#### [Delete List](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/delete_list)

```ruby
KlaviyoBeta::Lists.delete_list(id)
```





#### [Remove Profile from List](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/delete_list_relationships)

```ruby
KlaviyoBeta::Lists.delete_list_relationships(id, related_resource, body)
```





#### [Get List](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_list)

```ruby
KlaviyoBeta::Lists.get_list(id, opts)
```





#### [Get List Profiles](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_list_profiles)

```ruby
KlaviyoBeta::Lists.get_list_profiles(list_id, opts)
```





#### [Get List Profile Relationships](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_list_relationships)

```ruby
KlaviyoBeta::Lists.get_list_relationships(id, related_resource, opts)
```





#### [Get Lists](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_lists)

```ruby
KlaviyoBeta::Lists.get_lists(opts)
```





#### [Update List](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/update_list)

```ruby
KlaviyoBeta::Lists.update_list(id, body)
```






## Metrics


#### [Get Metric](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_metric)

```ruby
KlaviyoBeta::Metrics.get_metric(id, opts)
```





#### [Get Metric Aggregate](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_metric_aggregate)

```ruby
KlaviyoBeta::Metrics.get_metric_aggregate(body)
```





#### [Get Metrics](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_metrics)

```ruby
KlaviyoBeta::Metrics.get_metrics(opts)
```






## Profiles


#### [Create Profile](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/create_profile)

```ruby
KlaviyoBeta::Profiles.create_profile(body)
```





#### [Get Profile](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_profile)

```ruby
KlaviyoBeta::Profiles.get_profile(id, opts)
```





#### [Get Profile Lists](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_profile_lists)

```ruby
KlaviyoBeta::Profiles.get_profile_lists(profile_id, opts)
```





#### [Get Profile Relationships](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_profile_relationships)

```ruby
KlaviyoBeta::Profiles.get_profile_relationships(id, related_resource)
```





#### [Get Profile Segments](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_profile_segments)

```ruby
KlaviyoBeta::Profiles.get_profile_segments(profile_id, opts)
```





#### [Get Profiles](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_profiles)

```ruby
KlaviyoBeta::Profiles.get_profiles(opts)
```





#### [Subscribe Profiles](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/subscribe_profiles)

```ruby
KlaviyoBeta::Profiles.subscribe_profiles(body)
```





#### [Suppress Profiles](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/suppress_profiles)

```ruby
KlaviyoBeta::Profiles.suppress_profiles(body)
```





#### [Unsubscribe Profiles](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/unsubscribe_profiles)

```ruby
KlaviyoBeta::Profiles.unsubscribe_profiles(body)
```





#### [Unsuppress Profiles](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/unsuppress_profiles)

```ruby
KlaviyoBeta::Profiles.unsuppress_profiles(body)
```





#### [Update Profile](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/update_profile)

```ruby
KlaviyoBeta::Profiles.update_profile(id, body)
```






## Segments


#### [Get Segment](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_segment)

```ruby
KlaviyoBeta::Segments.get_segment(id, opts)
```





#### [Get Segment Profiles](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_segment_profiles)

```ruby
KlaviyoBeta::Segments.get_segment_profiles(segment_id, opts)
```





#### [Get Segment Relationships](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_segment_relationships)

```ruby
KlaviyoBeta::Segments.get_segment_relationships(id, related_resource, opts)
```





#### [Get Segments](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_segments)

```ruby
KlaviyoBeta::Segments.get_segments(opts)
```





#### [Update Segment](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/update_segment)

```ruby
KlaviyoBeta::Segments.update_segment(id, body)
```






## Templates


#### [Create Template](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/create_template)

```ruby
KlaviyoBeta::Templates.create_template(body)
```





#### [Create Template Clone](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/create_template_clone)

```ruby
KlaviyoBeta::Templates.create_template_clone(id, body)
```





#### [Create Template Render](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/create_template_render)

```ruby
KlaviyoBeta::Templates.create_template_render(id, body)
```





#### [Delete Template](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/delete_template)

```ruby
KlaviyoBeta::Templates.delete_template(id)
```





#### [Get Template](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_template)

```ruby
KlaviyoBeta::Templates.get_template(id, opts)
```





#### [Get Templates](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/get_templates)

```ruby
KlaviyoBeta::Templates.get_templates(opts)
```





#### [Update Template](https://developers.klaviyo.com/en/v2022-09-07.pre/reference/update_template)

```ruby
KlaviyoBeta::Templates.update_template(id, body)
```





# Appendix

## Per Request API key
```ruby
opts = {
  query_params: {
    'api_key': 'your-api-key',
  },
  debug_auth_names: []
}
 
response = KlaviyoBeta::Catalogs.get_catalog_items(opts)
```