require 'CSV'

namespace :import do
  desc "import all orgs"
  task import_orgs: :environment do
    CSV.foreach('db/csv/CNCS.csv', headers: true) do |row|
      Organization.create!(
                          name: row['Grantee / Sponsor Organization'],
                          city: row['Service City'],
                          county: row['Service County'],
                          state: row['Service State / Territory'],
                          zip: row['Service ZIP'],
                          loc: row['Location LAT/LONG']
      )
    end
  end
end
