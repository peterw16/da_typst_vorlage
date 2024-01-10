#import "template/template.typ": *
#show: diplomarbeit.with(
 title: "Hunting Shadows",
 aufgabenstellungen: (
     // infos Marie Ilic
    (
      schüler: "Marie Ilic", 
      betreuer: "Prof. Dr.DI Martin Gruber, Prof. DI Peter Zottele, MBA", 
      aufgabe: "Web-Development2, Frontend, Backend, Produktvideo",
      arbeitsaufteilung: [
        Hier kann genauso content stehen wie sonst auch. 

        Z.B. kann man listen machen:
        - Entweder bullet
        1. Oder numerierte
        + Wie z.b. hier
      ]
    ),
      // infos Oliwia Ozdzynska
    (
      schüler: "Oliwia Ozdzynska", 
      betreuer: "Prof. DI Peter Zottele, MBA", 
      aufgabe: "Musikproduktion, Soundeffekte",
      arbeitsaufteilung: [
        === Es sind auch headings möglich 
        #lorem(20)
      ]
    ),
      // infos Adrian Drassnar
    (
      schüler: "Adrian Drassnar", 
      betreuer: "Prof. Dr.DI Martin Gruber", 
      aufgabe: "Web-Development, Frontend, Backend, Produktvideo",
      arbeitsaufteilung: [
        Hier kann genauso content stehen wie sonst auch. 

        Z.B. kann man listen machen:
        - Entweder bullet
        1. Oder numerierte
        + Wie z.b. hier
      ]
    )
  ),
  
  kurzfassung: [
   Wie oben erwähnt, führt eine genauere, wissenschaftliche Betrachtung zu komplexeren Definitions- und Beschreibungsversuchen. Die Eigenschaft des „Text-Seins“ bezeichnet man als Textualität, die sprachwissenschaftliche Untersuchung von Texten ist die Textlinguistik. Diese Disziplin stellt verschiedene Textualitätskriterien zur Verfügung.
   
   Robert-Alain de Beaugrande und Wolfgang Ulrich Dressler stellten 1981 eine Reihe solcher Kriterien vor. Diese Kriterien beziehen sich einerseits auf die Merkmale des Textes selbst (Kohäsion, also formaler Zusammenhalt und Kohärenz, also inhaltlicher Zusammenhalt), andererseits auf die Merkmale einer Kommunikations­situation, aus der der betreffende Text entsteht bzw. in der er eingesetzt wird (Intentionalität, Akzeptabilität, Informativität, Situationalität).
    
    Kohäsion und Kohärenz gehören zu den am weitesten akzeptierten Textualitätskriterien, aber auch hier gibt es Abweichungen: Es gibt durchaus Texte, welche aus zusammenhanglosen Worten oder gar Lauten, zum Teil auch aus bis zu bloßen Geräuschen reduzierten Klangmalereien bestehen, und die, im Ganzen dennoch vielschichtig interpretierbar, eine eigene Art von Textualität erreichen (zum Beispiel Dada-Gedichte).
    
    Hier kommen die situationsbezogenen Textualitätskriterien ins Spiel: Texte sind auch dadurch bestimmt, dass ein Sender sie mit einer bestimmten Absicht (Intention) produziert und/oder ein Empfänger sie als solche akzeptiert. Ob ein Text für einen bestimmten Empfänger akzeptabel ist, hängt wiederum stark davon ab, ob dieser einen Zusammenhang der empfangenen Äußerung mit seiner Situation herstellen, den Text also in seine Vorstellungswelt „einbauen“ kann (Situationalität), und ob der Text für ihn informativ ist, also in einem bestimmten Verhältnis erwartete und unerwartete, bekannte und neue Elemente enthält.
    
    Um auf das Beispiel des Dada-Gedichtes zurückzukommen: Ein nicht offensichtlich kohäsiver oder kohärenter Text kann als solcher akzeptabel sein, wenn der Empfänger davon ausgeht, dass die Intention des Senders ein hohes Maß an überraschenden oder von der Norm abweichenden Elementen im Text erfordert.
  ],
  
  abstract: [
    #lorem(300)
  ]
)



// ---------------- Hauptdokument ------------------

= Einleitung

#lorem(200)

= Code Snippets


```java
public class QuotientRemainder {
  public static void main(String[] args) {

    int dividend = 25, divisor = 4;

    int quotient = dividend / divisor;
    int remainder = dividend % divisor;

    System.out.println("Quotient = " + quotient);
    System.out.println("Remainder = " + remainder);
  }
}
```

= Abbildungen
== New one

#figure(
  image("./images/Bild_1.JPG", width: 80%),
  caption: [Tiefpassfilter 1. Ordnung],
  supplement: [Abb.]
)

== Better one

Hellow 


#figure(
  image("./images/Bild_1.JPG", width: 80%),
  caption: [
    Tiefpassfilter 2. Ordnung
  ],
  supplement: [Abb.]
)

=== Third one

#figure(
  image("./images/Bild_1.JPG", width: 80%),
  caption: [
    Tiefpassfilter 3. Ordnung
  ],
  supplement: [Abb.]
)

= Tabellenansichten
== Tabelle neu

#figure(
  table(
    inset: 10pt,
    columns: 4,
    [t], [1], [2], [3],
    [y], [0.3s], [0.4s], [0.8s],
  ),
  caption: [Zeit Resultate],
  supplement: [Tabelle]
)

== Tabelle neu_2
#figure(
  table(
    inset: 20pt,
    columns: 4,
    [t], [1], [2], [3],
    [y], [0.3s], [0.4s], [0.8s],
  ),
  caption: [Zeit Resultate 2],
  supplement: [Tabelle]
)

@CACAO

Some other website @WinNT states that ....

