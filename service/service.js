'use strict';

var Glue = require('glue');
var Manifest = require('./manifest');

Glue.compose(Manifest,
    { relativeTo: __dirname },
    function (err, server) {
        if (err) {
            throw err;
        }
        server.start(function () {
            console.log('Service started');
        });
    }
);
