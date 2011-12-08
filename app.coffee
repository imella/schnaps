express = require 'express'
stylus  = require 'stylus'
assets  = require 'connect-assets'
app     = express.createServer()

app.use assets()
app.set 'view engine', 'jade'

app.get   '/',                (req, resp) -> resp.render 'index'
app.get   '/schaps/deliver',  (req, resp) -> "hola"
app.post  '/schaps/deliver',  (req, resp) -> "hola"
app.post  '/schaps/deliver',  (req, resp) -> "hola"

app.listen 8000