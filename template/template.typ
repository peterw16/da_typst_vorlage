#import "customs.typ"

#let diplomarbeit(
  title: "", 
  kurzfassung: [],
  abstract: [], 
  aufgabenstellungen: (), 
  body
) = {

// ------ global definitions -----

set text(font: "Helvetica")
set page(
  paper: "a4", 
  margin: (x: 2cm, top: 4cm),
  header: [
    #set align(horizon)
    #grid(
      columns: (3cm, 1fr , 3cm),
      align(left,image("images/htl_zukunft.jpg",width: 80%)),
      align(center)[HÖHERE TECHNISCHE BUNDESLEHRANSTALT Wien 16\
      Abteilung für Informationstechnologie],
      align(right,image("images/HTLWienWest.png",width: 70%))
    )
  ],
  footer: {
    set align(center)
    set text(12pt)
    line(length:100%)

    // dont display page number on first page
    locate(loc => {
      if loc.page() > 1 {
        counter(page).display("- i -")        
      }
    })
  },
  numbering: "i"
)


show heading.where(level: 1): set text(size: 17.2pt)
show heading.where(level: 1): it => {
  pad(bottom: 20pt)[#it]
}

// add outlines to Inhaltsverzeichnis, except for Inhaltsverzeichnis itself
// and make first level entries bold
show outline.where(title: [Inhaltsverzeichnis]): it => {
   show outline.entry.where(level: 1): set text(weight: "bold")   
   set heading(outlined: false)
   it
}
show outline: set heading(outlined: true)

set outline(fill: repeat([#h(3pt).#h(3pt)]))

// modify outline entries
show outline.entry: customs.outline_entry // no fills for level 1 entries
// add spacing between entries
show outline.entry.where(level: 1): it => {
  v(20pt, weak: true)
  it
}

set par(leading: 1em, justify: true)

// -------------------------------

// -------- Vordefinierte Seiten -------

{
show heading: it => {upper(it)}

//Deckblatt
import "pages/deckblatt.typ": deckblatt
deckblatt(title, aufgabenstellungen)
pagebreak()

//Eidesstattliche Erklärung
import "pages/eidesstattliche.typ": eidesstattliche
let persons = aufgabenstellungen.map(e => e.schüler)
eidesstattliche(persons: persons)
pagebreak()

//Kurzfassung
[= Kurzfassung]
kurzfassung
pagebreak()

//Abstract
[= Abstract]
abstract
pagebreak()

}

//Abbildungsverzeichnis
outline(
  title: "Abbildungsverzeichnis",
  target: figure.where(kind: image),
)
pagebreak()

//Tabellenverzeichnis
outline(
  title: "Tabellenverzeichnis",
  target: figure.where(kind: table),
)
pagebreak()

//Inhaltsverzeichnis
outline(
  title: "Inhaltsverzeichnis",
  indent:auto,
)

// -------------------------------

// Numerierung  der Kapitel und Seiten festlegen
set heading(numbering: "1.1")
set page(
  footer: [
    #set align(center)
    #set text(12pt)
    #line(length:100%)
    #counter(page).display("- 1 -")
  ],
  numbering: "1",
)


// start of actual DA writing
pagebreak()
counter(page).update(1)

{  
  // add pagebreak before each level 1 heading (except for first heading after outline)
  show heading.where(level: 1): it => {
    if counter(heading).at(it.location()).first() != 1 {
      pagebreak()
    }  
    it
  }

  body
}

pagebreak()

// -------- Vordefinierte Seiten --------

// Literaturverzeichnis
set heading(numbering: none)
bibliography("../literaturverzeichnis.bib",
      title: [Literaturverzeichnis]
    )
pagebreak()

counter(heading).update(0)
set heading(numbering: "A")

// Arbeitsaufteilung
import "pages/arbeitsaufteilung.typ": arbeitsaufteilung
let aufteilungen = aufgabenstellungen
  .map(a => (a.schüler, a.arbeitsaufteilung))
arbeitsaufteilung(aufteilungen: aufteilungen)
pagebreak()


// Diplomarbeitsantrag
[= Diplomarbeitsantrag]


// ----------------------------------------

}