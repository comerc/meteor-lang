Package.describe({
  name: 'comerc:lang',
  summary: 'language selector',
  version: '0.0.1',
  git: 'https://github.com/comerc/lang.git'
});

Package.onUse(function(api) {

  api.use([
    'coffeescript',
  ], ['client', 'server']);

  api.use([
    'underscore',
    'templating',
    'mrt:accounts-t9n'
  ], 'client');


  api.versionsFrom('1.0');
  api.addFiles(['lib/main.coffee', 'lib/main.html'], ['client']);

  api.export([
    'Lang'
  ]);

});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('lang');
  api.addFiles('lang-tests.js');
});
