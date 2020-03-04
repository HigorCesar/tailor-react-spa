/* eslint-disable no-console */
'use strict'

const http = require('http')
const Tailor = require('node-tailor')

const fetchTemplate = require('./lib/fetch-template')
const tailor = new Tailor({
  fetchTemplate: fetchTemplate('', () => 'base-template')
})

http
  .createServer(async (req, res) => {
    if (req.url === '/favicon.ico') {
      res.writeHead(200, { 'Content-Type': 'image/x-icon' })
      return res.end('')
    }

    req.headers['x-request-uri'] = req.url
    req.url = '/index'
    tailor.requestHandler(req, res)

  })
  .listen(8080, function () {
    console.log('Tailor server listening on port 8080')
  })
