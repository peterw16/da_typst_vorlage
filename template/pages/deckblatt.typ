
#let deckblatt(title, aufgabenstellungen) = [

#let t20(body) = {
  text(size: 20pt, body)
}


#v(20pt)

#[
  #set text(size: 20pt)
  #set align(center)
  DIPLOMARBEIT
]

#v(40pt)

#set text(size: 12pt)
#set align(center)

Gesamtprojekt

#text(size: 17pt)[#title]

// v = vertical space 
#v(20pt)

// pad, padding nur verwenden wenn du es um ein element herum machst. dafür musst du dann einen body angeben #pad()[<body>]

// members: ((<mitglied>, <betreuer>), ..)
#let betreuung(..members) = {
  let list = members.pos()
  
  let single(mitglied, betreuer, aufgabenstellung) = {
    (text(weight: "bold")[Aufgabenstellung #mitglied],
     [],
     pad(bottom: 20pt)[#aufgabenstellung],
     [Betreuer: #betreuer])
  }
  
  block({
    set align(left)    
    grid(
       columns: (auto, auto),
       rows: (auto, auto),
       column-gutter: 60pt,
       row-gutter: 10pt,
       
       ..for e in list {
         single(e.schüler, e.betreuer, e.aufgabe)
       }
    )
  })
}

#betreuung(
   ..aufgabenstellungen
)

#set align(left)

#let year = datetime.today().year()

Ausgeführt im Schuljahr #{year - 1}/#str(year).slice(2)

#set align(bottom)

#grid(
  columns: (1fr, 1fr),
  [#pad(bottom: 20pt)[Abgabevermerk:] Datum: #"********"],
  [übernommen von:]
)

#v(30pt)

]
