lang
====

Yo! This package allow you to add language selector ```{{> lang}}``` in your templates.

Example for **anti:i18n**
```
langList =
  "ru": "RUS"
  "en": "ENG"

Lang.setList(langList)

Lang.swith = (lang) ->
  i18n.setLanguage(lang)

Lang.init = (lang) ->
  i18n.setDefaultLanguage(lang)
```

Example for **softwarerero:accounts-t9n**
```
langList =
  "ru": "RUS"
  "en": "ENG"

Lang.setList(langList)

Lang.swith = (lang) ->
  T9n.setLanguage(lang)

Lang.init = (lang) ->
  T9n.defaultLanguage = lang
```

DEMO
----

![demo](https://github.com/comerc/lang/blob/master/lang.gif)

TODO
----

Functionality like https://www.facebook.com/login.php

*disclaimer*: Its my first meteor package. Just for fun.
