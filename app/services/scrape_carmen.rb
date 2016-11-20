class ScrapeCarmen

  def self.run
    Carmen::Country.all.each do |country|
      import(country)
    end
  end

  # @param source [Carmen::Region]
  # @return [Region]
  def self.import(source, parent = nil)
    region = Region.find_or_initialize_by(region: parent, code: source.code)
    region.name = source.name
    region.category = source.type

    if source.type == 'country'
      region.alpha_3_code = source.try(:alpha_3_code)
      region.numeric_code = source.try(:numeric_code)
    end

    region.save!

    source.subregions.each { |sr| import(sr, region) }

    region
  end

end