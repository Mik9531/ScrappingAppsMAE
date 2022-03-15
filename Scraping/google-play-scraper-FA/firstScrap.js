var gplay = require('google-play-scraper');

// the following method will perform batches of 10 requests per second
gplay.search({term: 'panda'}).then(console.log);