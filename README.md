lang
====

Yo! This package allow you add language selector ```{{> lang}}``` in your templates.

Example for **anti:i18n**
```
LangList =
  "ru": "RUS"
  "en": "ENG"

Lang.setList LangList

Lang.swith = (lang) ->
  i18n.setLanguage(lang)

Lang.init = (lang) ->
  i18n.setDefaultLanguage(lang)
```

Example for **softwarerero:accounts-t9n**
```
LangList =
  "ru": "RUS"
  "en": "ENG"

Lang.setList LangList

Lang.swith = (lang) ->
  T9n.setLanguage(lang)

Lang.init = (lang) ->
  T9n.defaultLanguage = lang
```

disclaimer: Its my first meteor package. Just for fun.

![demo](https://github.com/comerc/lang/blob/master/lang.gif)
