'use strict';

var Glue     = require('glue');
var Manifest = require('./manifest');

Glue.compose(Manifest, {
    relativeTo: __dirname
}, function callback(err, server) {
    if (err) {
        throw err;
    }
    server.start(function start() {
        console.log('Service started');
    });
});