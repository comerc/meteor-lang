meteorHashTable = (list) ->
  a = []
  _.each list, (val, key) ->
    a.push
      key:key
      val:val
  return a

langList = []

Lang = ->
  return

Lang.setList = (list) ->
  langList = list

getCookie = (name) ->
  fullCookie = document.cookie
  startIndex = fullCookie.indexOf(name + "=")
  return null  if startIndex is -1 # named cookie not found
  startIndex = fullCookie.indexOf("=", startIndex) + 1
  endIndex = fullCookie.indexOf(";", startIndex)
  endIndex = fullCookie.length  if endIndex is -1
  unescape fullCookie.substring(startIndex, endIndex)

Meteor.startup ->
  Template.lang.helpers
    items: meteorHashTable(langList)

  Template.lang.events
    "click a.lang": (event) ->
      event.preventDefault()
      lang = event.currentTarget.id
      document.cookie = "lang=" + lang + ";expires=Sat, 01 Jan 2050 00:00:00 GMT"
      Lang.swith(lang)

  lang = getCookie("lang")
  unless lang
    lang = window.navigator.language || window.navigator.userLanguage
  if lang && _.has(langList, lang)
    Lang.init(lang)

common =
  en: "English"
  de: "Deutsch"
  fr: "Français"
  es: "Español"
  it: "Italiano"
  pt: "Português"
  ru: "Русский"
  zh: "中文"
  id: "Bahasa Indonesia"
  bs: "Bosanski"
  ca: "Català"
  cs: "Čeština"
  da: "Dansk"
  hr: "Hrvatski"
  sw: "Kiswahili"
  lv: "Latviešu"
  lt: "Lietuvių"
  hu: "Magyar"
  ms: "Melayu"
  nl: "Nederlands"
  nb: "Norsk bokmål"
  pl: "Polski"
  ro: "Română"
  sq: "Shqip"
  sl: "Slovenski"
  sk: "Slovenský"
  sr: "Srpski"
  fi: "Suomi"
  sv: "Svenska"
  tl: "Tagalog"
  vi: "Tiếng Việt"
  tr: "Türkçe"
  el: "Ελληνικά"
  bg: "Български"
  uk: "Українська"
  he: "עברית"
  ar: "العربية"
  hi: "हिंदी"
  th: "ไทย"
  ja: "日本語"
  ko: "한국어"

variations =
  "en-us": "United States"
  "en": "UK"
  "es": "España"
  "es-co": "Colombia"
  "es-mx": "México"
  "es-ar": "Argentina"
  "pt": "Brasil"
  "pt-pt": "Portugal"
  "zh": "简体"
  "zh-Hant": "繁體"
