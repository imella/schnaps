express = require 'express'
stylus  = require 'stylus'
assets  = require 'connect-assets'
app     = express.createServer()

# Mongo
Db     = require('mongodb').Db
Server = require('mongodb').Server;
client = new Db('test', new Server("127.0.0.1", 27017, {}), { native_parser: false })


app.use assets()
app.set 'view engine', 'jade'

app.get   '/',                (req, resp) -> resp.render 'index'
app.get   '/schnaps/deliver', (req, resp) -> resp.send client.collection "schnaps"
app.post  '/schnaps/up',      (req, resp) -> "hola"
app.post  '/schnaps/down',    (req, resp) -> "hola"

app.listen 8000