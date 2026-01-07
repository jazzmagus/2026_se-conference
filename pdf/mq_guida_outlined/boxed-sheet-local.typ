// Default colorscheme
// #let color-box = (
//   rgb(190, 149, 196),
//   rgb(255, 205, 178),
//   rgb(102, 155, 188),
//   rgb(229, 152, 155),
//   rgb("6a4c93"),
//   rgb("E0A500"),
//   rgb("#934c84"),
//   rgb("#934c5a"),
// )

Foliage colorscheme
#let color-box = (
  rgb("#2f5d50"), // verde bosco
  rgb("#4f6f64"), // salvia scuro
  rgb("#3a5f7d"), // blu ardesia
  rgb("#6b7f7a"), // grigio-verde
  rgb("#8aa29e"), // eucalipto chiaro
  rgb("#5c6f82"), // blu freddo
  rgb("#7a8f8b"), // lichene
  rgb("#3e4f4c"), // verde profondo
)

// brownies colorscheme
// #let color-box = (
//   rgb("#5a3e2b"), // marrone scuro
//   rgb("#8b5e3c"), // cuoio
//   rgb("#a97142"), // terra bruciata
//   rgb("#c19a6b"), // sabbia
//   rgb("#7a4a2e"), // castagna
//   rgb("#9c6b3f"), // nocciola
//   rgb("#6e4b3a"), // legno
//   rgb("#b08d57"), // ocra spento
// )

// nordic colorscheme
// #let color-box = (
//   rgb("#1f3b4d"), // blu notte
//   rgb("#3a5a73"), // blu acciaio
//   rgb("#4f6d7a"), // blu-grigio
//   rgb("#7b8fa1"), // grigio freddo
//   rgb("#5f7f7a"), // verde freddo
//   rgb("#8fa3ad"), // ghiaccio
//   rgb("#2e4756"), // blu profondo
//   rgb("#6c8190"), // ardesia
// )

// minimal paper colorscheme
// #let color-box = (
//   rgb("#2b2b2b"), // quasi nero
//   rgb("#4a4a4a"), // grigio scuro
//   rgb("#6b5f54"), // carta antica
//   rgb("#8a7f72"), // sabbia fredda
//   rgb("#5b6d7c"), // blu polvere
//   rgb("#7a6a5a"), // seppia
//   rgb("#3f4f5c"), // inchiostro
//   rgb("#9a8f84"), // pergamena
// )

// --- Data in italiano (compatibile con Typst senza locale) ---
#let mesi_it = (
  "gennaio", "febbraio", "marzo", "aprile", "maggio", "giugno",
  "luglio", "agosto", "settembre", "ottobre", "novembre", "dicembre",
)

#let data_it(dt) = {
  let m = mesi_it.at(dt.month() - 1)
  str(dt.day()) + " " + m + " " + str(dt.year())
}

#let concept-block(
  body: content,
  alignment: start,
  width: 100%,
  fill-color: white,
) = context {
  let heading-count = counter(heading).at(here()).first()
  let current-color = color-box.at(calc.rem(heading-count - 1, color-box.len()))

  block(
    stroke: current-color,
    fill: fill-color,
    radius: 1pt,
    inset: 6pt,
    width: width,
    breakable: true, // utile nei layout a colonne
  )[
    #align(alignment)[
      #body
    ]
  ]
}

#let inline(title) = context {
  let heading-count = counter(heading).at(here()).first()
  let current-color = color-box.at(calc.rem(heading-count - 1, color-box.len()))

  box(grid(
    columns: (1fr, auto, 1fr),
    align: horizon + center,
    column-gutter: 1em,
    line(length: 100%, stroke: 1pt + current-color),
    text(fill: current-color, weight: "bold")[#title],
    line(length: 100%, stroke: 1pt + current-color),
  ))
}

#let boxedsheet(
  title: [],
  homepage: "",
  authors: (),
  write-title: false,
  title-align: center,
  title-number: true,
  title-delta: 1pt,
  scaling-size: false,
  font-size: 5.5pt,
  line-skip: 5.5pt,
  x-margin: 30pt,
  y-margin: 0pt,
  num-columns: 5,
  column-gutter: 4pt,
  numbered-units: false,
  body
) = {

let today = datetime.today()
let today_str = data_it(today)
let institute = "IIS Remondini — Bassano del Grappa"

  set page(
    paper: "a4",
    flipped: true,
    margin: (x: x-margin, y: y-margin),
    header: [
      #grid(
        columns: (1fr, 1fr, 1fr),
        align: (left, center, right),
        gutter: 0pt,
        [
          #text(today_str)
        ],
        // [
        //   #text(title, weight: "bold")
        // ],
        [
          #text(institute, weight: "bold")
        ],
        [
          #text(authors + ": " + homepage)
        ]
      )
      #v(-3pt)
      #line(length: 100%, stroke: black)
    ]
  )

  set text(size: font-size)
  set heading(numbering: "1.1") if title-number

  show heading: it => {
    let index = counter(heading).at(it.location()).first()
    let hue = color-box.at(calc.rem(index, color-box.len()))
    if title-number {
      hue = color-box.at(calc.rem(index - 1, color-box.len()))
    }

    let color = hue.darken(8% * (it.depth - 1))
    let heading_size = font-size
    let inset_size = 1.0mm

    if scaling-size {
      heading_size = heading_size + 2pt * (3 - it.depth)
      inset_size = inset_size + 0.25mm * (3 - it.depth)
    }

    set text(white, size: heading_size)
    set align(title-align)
    block(
      radius: 0.4mm,
      inset: inset_size,
      width: 100%,
      above: line-skip,
      below: line-skip,
      fill: color,
      it
    )
  }

  let new-body = {
    if write-title {
      align(center, [
        #text(style: "italic", size: font-size + 5pt + title-delta, [#title]) \
        #v(2pt)
        #text(size: font-size + 1pt + title-delta, [#authors]) \
        #v(2pt)
        // #text(size: font-size + 2pt + title-delta, [#today_str])
      ])
    }
    body
  }

  columns(num-columns, gutter: column-gutter, new-body)
}

#let boxedsheet-scaling(
  title: [],
  homepage: "",
  authors: (),
  write-title: false,
  title-align: center,
  page-w: auto,
  page-h: auto,
  title-number: true,
  title-delta: 1pt,
  scaling-size: false,
  font-size: 5.5pt,
  line-skip: 5.5pt,
  x-margin: 30pt,
  y-margin: 0pt,
  num-columns: 5,
  column-gutter: 4pt,
  numbered-units: false,
  body
) = {

let today = datetime.today()
let today_str = data_it(today)

  set page(
    width: page-w,
    height: page-h,
    flipped: true,
    margin: (x: x-margin, y: y-margin),
    header: [
      #grid(
        columns: (1fr, 1fr, 1fr),
        align: (left, center, right),
        gutter: 0pt,
        [
          #text(today_str, weight: "bold")
        ],
        [
          #text(title, weight: "bold")
        ],
        [
          #text(authors + " @ " + homepage, weight: "bold")
        ]
      )
      #v(-3pt)
      #line(length: 100%, stroke: black)
    ]
  )

  set text(size: font-size)
  set heading(numbering: "1.1") if title-number

  show heading: it => {
    let index = counter(heading).at(it.location()).first()
    let hue = color-box.at(calc.rem(index, color-box.len()))
    if title-number {
      hue = color-box.at(calc.rem(index - 1, color-box.len()))
    }

    let color = hue.darken(8% * (it.depth - 1))
    let heading_size = font-size
    let inset_size = 1.0mm

    if scaling-size {
      heading_size = heading_size + 2pt * (3 - it.depth)
      inset_size = inset_size + 0.25mm * (3 - it.depth)
    }

    set text(white, size: heading_size)
    set align(title-align)
    block(
      radius: 0.6mm,
      inset: inset_size,
      width: 100%,
      above: line-skip,
      below: line-skip,
      fill: color,
      it
    )
  }

  let new-body = {
    if write-title {
      align(center, [
        #text(style: "italic", size: font-size + 5pt + title-delta, [#title]) \
        #v(2pt)
        #text(size: font-size + 2pt + title-delta, [#authors]) \
        #v(2pt)
        #text(size: font-size + 2pt + title-delta, [#today_str])
      ])
    }
    body
  }

  columns(num-columns, gutter: column-gutter, new-body)
}
