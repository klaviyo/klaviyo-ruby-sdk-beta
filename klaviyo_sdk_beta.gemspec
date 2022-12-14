# -*- encoding: utf-8 -*-

=begin
#Klaviyo API (Beta)

#The Klaviyo REST API. Please visit https://developers.klaviyo.com for more details.

The version of the OpenAPI document: 2022-09-07.pre
Contact: developers@klaviyo.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "klaviyo_sdk_beta/version"

Gem::Specification.new do |s|
  s.name        = "klaviyo_sdk_beta"
  s.version     = "1.0.1.20220907"
  s.authors     = ['Klaviyo Team']
  s.email       = ['libraries@klaviyo.com']
  s.summary     = 'You heard us, a Ruby wrapper for the Klaviyo API'
  s.description = 'Ruby wrapper for the Klaviyo API'
  s.homepage    = 'https://www.klaviyo.com/'
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.4"

  s.add_runtime_dependency 'retriable', '~> 3.1'
  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.executables   = []
  s.require_paths = ["lib"]

  s.metadata = {
    "changelog_uri"     => "https://github.com/klaviyo/klaviyo-ruby-sdk-beta/blob/main/CHANGELOG.md",
    "documentation_uri" => "https://github.com/klaviyo/klaviyo-ruby-sdk-beta/blob/main/README.md",
  }
end
