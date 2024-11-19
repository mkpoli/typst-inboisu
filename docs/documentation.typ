#import "@preview/tidy:0.3.0"

#set page(paper: "jis-b5")
#set text(font: "Noto Sans CJK JP", size: 10pt)
#set heading(numbering: "1.1")

#let title(body) = {
  set text(font: "Noto Serif CJK JP", size: 20pt)
  align(center, body)
}

#let package_info = toml("../typst.toml")
#let name = package_info.package.name
#let version = package_info.package.version
// #read("../src/lib.typ")
#let docs = tidy.parse-module(read("../src/lib.typ"))


#title(raw(name + " v" + version))

#show link: it => {
  set text(fill: blue)
  underline(it)
}

#let show-module = tidy.show-module

#outline(title: "目次 / Table of Contents")

= 概要 / Overview
このパッケージは日本で一般的な請求書、領収書を作れるテンプレートです。インボイス制度による適格請求書は一定のカスタマイズによって作ることもできます。

= APIリファレンス / API Reference
== 関数 / Functions

#tidy.show-module(
  docs,
  local-names: (
    default: "デフォルト / Default",
    parameters: "パラメーター / Parameters",
  ),
  style: tidy.styles.default,
)
