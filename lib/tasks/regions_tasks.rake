namespace :regions do
  desc 'Import all regions from Carmen'
  task import: :environment do
    ScrapeCarmen.run
  end
end


