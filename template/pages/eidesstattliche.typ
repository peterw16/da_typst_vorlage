#let eidesstattliche(persons: ()) = [
  
  = Eidesstattliche Erklärung

  Ich erkläre an Eides statt, dass ich die vorliegende Diplomarbeit selbst¨andig und ohne fremde Hilfe verfasst, andere als die angegebenen Quellen und Hilfsmittel nicht benutzt und die den benutzten Quellen wörtlich und inhaltlich entnommenen Stellen als solche erkenntlich gemacht habe.

  #v(50pt)

  #let signature(person) = {
    pad(top: 30pt)[
      #line(length: 80%, stroke: 0.5pt)
      #person
    ]
  }

  #grid(
    columns: (1fr, 1fr),

    [Wien, am #datetime.today().display("[day].[month].[year]")],
    align(center)[
      Verfasser/Verfasserin:

      #for p in persons {
        signature(p)
      }
    ]
  )
  
  
]
