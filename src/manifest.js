'use strict';

/**
 * Manifest for the Service.
 */
var manifest = {
    server     : {
        app  : {
            slogan: 'This is a service'
        },
        debug: {
            request: ['error']
        }
    },
    connections: [
        {
            port: 3000
        }
    ],
    plugins    : {}
};

/**
 * Export the Instance to the World
 */
module.exports = manifest;