![Logo of the project](https://c3.staticflickr.com/3/2804/4328074809_0612af691b_o.jpg)

# VolunTellMe API

This is the API portion of the VolunTellMe application. It serves up a static CSV of the location of sites where AmeriCorps members and Senior Corps volunteers served between 2/10/2016 and 2/10/2017. See the wonderful [report](https://data.nationalservice.gov/Grants-and-Grantees/CNCS-State-Profiles-2016-2017-National-Map-of-Prog/wy3d-x64g) for much more information and context.

The more interesting portion can be found at the [front end application repo](https://github.com/jk1dd/voluntellme), or even better at the [live application](www.google.com).

## Installing / Getting started

```
git clone https://github.com/jk1dd/voluntellme_api.git
cd voluntellme_api
bundle install
rake db:{create,migrate}
rake import:import_orgs
rails s
```
> Importing the records will take some time, and will display error messages as it goes.

Then visit `localhost:3000/api/v1/organizations` to see the JSON response. Not too interesting.

## Features

This application serves up the data needed to display on the front end.
* Organizations are only created if they are not missing name, city, county, state, zip, or location fields
* It is filtered to just show one distinct record for each organization

## Contributing

If you'd like to contribute, please fork the repository and use a feature
branch. Pull requests are warmly welcome, and please write tests!

## Licensing

The code in this project is licensed under MIT license.
