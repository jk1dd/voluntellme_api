require 'CSV'

namespace :import do
  desc "import all orgs"
  task import_orgs: :environment do
    counter = 0
    CSV.foreach('db/csv/CNCS.csv', headers: true) do |row|
      org = Organization.create(
                          name: row['Grantee / Sponsor Organization'],
                          city: row['Service City'],
                          county: row['Service County'],
                          state: row['Service State / Territory'],
                          zip: row['Service ZIP'],
                          loc: row['Location LAT/LONG']
      )
      puts org.errors.full_messages if org.errors.any?
      counter += 1 if org.persisted?
    end
    puts "Imported #{counter} organizations."
  end
end
