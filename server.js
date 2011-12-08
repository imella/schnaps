(function() {
  require('coffee-script');
  require('./app');

    process.addListener('uncaughtException', function(err, stack) {
    console.log('------------------------');
    console.log('Exception: ' + err);
    console.log(err.stack);
    return console.log('------------------------');
  });
}).call(this);