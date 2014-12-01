Package.describe({
  name: 'comerc:lang',
  summary: 'Language selector for any i18n-package',
  version: '0.1.1',
  git: 'https://github.com/comerc/lang.git'
});

Package.onUse(function(api) {

  api.use([
    'coffeescript',
  ], ['client', 'server']);

  api.use([
    'underscore',
    'templating'
  ], 'client');


  api.versionsFrom('1.0');
  api.addFiles(['lib/main.coffee', 'lib/main.html'], 'client');

  api.export([
    'Lang'
  ], 'client');

});

// Package.onTest(function(api) {
//   api.use('tinytest');
//   api.use('lang');
//   api.addFiles('lang-tests.js');
// });
