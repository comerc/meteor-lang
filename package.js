Package.describe({
  name: 'comerc:lang',
  summary: 'Language selector for accounts-t9n',
  version: '0.0.2',
  git: 'https://github.com/comerc/lang.git'
});

Package.onUse(function(api) {

  api.use([
    'coffeescript',
  ], ['client', 'server']);

  api.use([
    'underscore',
    'templating',
    'softwarerero:accounts-t9n@1.0.3'
  ], 'client');


  api.versionsFrom('1.0');
  api.addFiles(['lib/main.coffee', 'lib/main.html'], ['client']);

  api.export([
    'Lang'
  ]);

});

// Package.onTest(function(api) {
//   api.use('tinytest');
//   api.use('lang');
//   api.addFiles('lang-tests.js');
// });
