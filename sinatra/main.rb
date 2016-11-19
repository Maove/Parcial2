require 'rubygems'
require 'sinatra'
require 'pg'

set :bind, '0.0.0.0'

db_params = {
:host => '192.168.130.226',
:dbname => 'postgres',
:port => '5432',
:user => 'postgres',
:password => 'postgres'
}

Psql = PG::Connection.new(db_params)

get '/' do
  res = Psql.exec_params('SELECT * FROM presentaciones;')
  valores = res.field_values('fecha')
end
