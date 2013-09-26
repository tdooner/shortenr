require 'active_record'     # http://apidock.com/rails/ActiveRecord/Base
require 'sinatra'           # http://www.sinatrarb.com/intro.html
require 'sqlite3'

# delete the database if it already exists:
`rm database.sqlite3`

class Link < ActiveRecord::Base
  # the link model
  # (persisted in the `links` table in database.sqlite3)
end

configure do
  ActiveRecord::Base.establish_connection(
    adapter: 'sqlite3',
    database: 'database.sqlite3',
  )

  ActiveRecord::Schema.define do
    create_table :links do |t|
      # database fields here
    end
  end
end

get '/' do
  'Hello world!'
end
