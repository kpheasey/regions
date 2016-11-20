namespace :regions do
  desc 'Import all regions from Carmen'
  task :import do
    ScrapeCarmen.run
  end
end


