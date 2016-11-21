# Regions

Add a Rails model containing all regions and subregions from Carmen.

## Installation

Add the gem to your Gemfile.

```rb
gem 'regions'
```

Bundle Install

```sh
bundle install
```

Migrate to create the table.

```sh
rake db:migrate
```

Import all the regions.

```sh
rake regions:import
```

## Usage

Usage is fairly simple, you have access to the `Region` model.  Each region can belong to a region and can have many
regions.  There is also a `Region.countries` scope to quickly access the top level of regions.

```
region = Region.countries.find_by(code: 'US')
 => #<Region id: 4831, region_id: nil, category: "country", code: "US", name: "United States", alpha_3_code: "USA", numeric_code: 840, created_at: "2016-11-21 00:09:01", updated_at: "2016-11-21 00:09:01">
 
region.name
 => "United States"
 
region.regions.first.category
 => "state"
 
region.regions.first.name
 => "Alaska"
```