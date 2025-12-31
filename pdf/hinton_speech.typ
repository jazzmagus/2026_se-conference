// hinton_nobel_speech.typ

#set page(
  margin: (top: 1.8cm, bottom: 1.8cm, left: 1.6cm, right: 1.6cm),
  header: [
    #set text(size: 8pt)
    #grid(
      columns: (1fr, 1fr),
      align: (left, right),
      [IIS GA Remondini - Bassano del Grappa],
      [A.S. 2025/'26]
    )
    #v(2pt)
    #line(length: 100%, stroke: 0.5pt)
  ],
  footer: [
    #line(length: 100%, stroke: 0.5pt)
    #v(2pt)
    #set text(size: 9pt)
    #grid(
      columns: (1fr, 1fr),
      align: (left, right),
      [Prof. Diego Fantinelli],
      context [Pagina #counter(page).display() di #counter(page).final().first()]
    )
  ]
)

// Tipografia
#set text(font: "helvetica", size: 9.7pt)

// Paragrafi “newspaper”
#set par(
  justify: true,
  leading: 0.8em,
  first-line-indent: 0pt,
)

// Spazio tra paragrafi
#set block(spacing: 0.70em)

// Titoli: sans bold
#set heading(numbering: none)
#show heading: it => [
  #set text(font: "Helvetica", weight: "bold")
  #it
]

// Piccolo helper per box evidenziati (idee chiave)
#let keybox(title, body) = [
  #block(
    inset: 8pt,
    radius: 2pt,
    stroke: 0.0pt,
  )[
    #set text(font: "Helvetica", weight: "bold")
    #title
    #v(0pt)
    #set text(font: "Helvetica", weight: "regular")
    #body
  ]
]

// ===== TESTATA =====
#align(center)[
  = Geoffrey E. Hinton — Nobel per la Fisica 2024
  #text(font: "Helvetica", size: 12pt, weight: "regular")[
    “The Godfather of AI” — estratto dal discorso al banchetto della cerimonia
  ]
]

#v(0.2cm)
#line(length: 100%)
#v(0.15cm)

== Contesto

#quote(block: true)[
  Questo testo riassume (in traduzione) alcuni passaggi di un intervento di
  Geoffrey E. Hinton collegato al riconoscimento assegnato nel 2024 per i progressi
  legati a una nuova forma di intelligenza artificiale basata su reti neurali
  artificiali. Il tono è quello di un discorso pubblico: entusiasmo per i benefici,
  ma anche avvertimenti molto netti sui rischi a breve e lungo termine.
]

#keybox(
  [Spunti di riflessione],

  [
   - #emph[
      Quali benefici concreti promette l’intelligenza artificiale e a chi
      andranno realmente i vantaggi dell’aumento di produttività?
    ]


   - #emph[
      In che modo strumenti progettati per “aiutare” possono già oggi
      amplificare polarizzazione, sorveglianza e manipolazione?
    ]

  - #emph[
      Cosa significa, sul piano etico e politico, creare sistemi
      potenzialmente più intelligenti di noi senza sapere se potremo
      mantenerne il controllo?
    ]
  ]
)

#v(0.40cm)

// ===== CORPO IN DUE COLONNE =====
#columns(2, gutter: 0.8cm)[

= Estratto del discorso

Quest’anno i Comitati Nobel per la Fisica e per la Chimica hanno riconosciuto
i progressi straordinari compiuti in una nuova forma di intelligenza artificiale
che utilizza reti neurali artificiali per imparare a risolvere problemi
computazionali complessi.

Questa nuova forma di intelligenza artificiale eccelle nel modellare
l’intuizione umana più che il ragionamento umano e ci permetterà di creare
assistenti altamente intelligenti e competenti, in grado di aumentare la
produttività in quasi tutti i settori.

Se i benefici di questa maggiore produttività potranno essere condivisi
equitamente, si tratterà di un enorme progresso per tutta l’umanità.

Purtroppo, il rapido sviluppo dell’intelligenza artificiale comporta anche
molti rischi a breve termine. Ha già contribuito alla creazione di camere
dell’eco divisive, offrendo alle persone contenuti che alimentano indignazione
e polarizzazione.

È già utilizzata da governi autoritari per la sorveglianza di massa e da
criminali informatici per attacchi di phishing.

In un futuro prossimo, l’intelligenza artificiale potrebbe essere impiegata
per creare nuovi virus devastanti e armi letali spaventose, capaci di decidere
autonomamente chi uccidere o mutilare.

Tutti questi rischi a breve termine richiedono un’attenzione urgente e decisa
da parte dei governi e delle organizzazioni internazionali.

Esiste inoltre una minaccia esistenziale di più lungo periodo, che emergerà
quando creeremo entità digitali più intelligenti di noi. Non sappiamo se
saremo in grado di mantenerne il controllo, ma oggi abbiamo prove che,
se verranno sviluppate da aziende guidate da profitti a breve termine,
la nostra sicurezza non sarà la priorità.

Abbiamo urgente bisogno di ricerca su come impedire che queste nuove entità
sviluppino il desiderio di prendere il controllo. Non si tratta più di
fantascienza.

#v(0.2cm)
#align(right)[
  #text(font: "Helvetica", weight: "bold")[— Geoffrey Hinton]
]

= Idee chiave (per commento orale)

#v(0.40cm)
#keybox(
  [1. Benefici],
  [
    Assistenti intelligenti e aumento della produttività in molti settori.
    Il punto “politico” implicito è la distribuzione equa dei benefici.
  ]
)

#v(0.12cm)
#keybox(
  [2. Rischi già attuali],
  [
    Camere dell’eco e polarizzazione; sorveglianza di massa; phishing e attacchi informatici.
  ]
)

#v(0.12cm)
#keybox(
  [3. Rischio di lungo periodo],
  [
    Perdita di controllo su entità digitali più intelligenti di noi.
    Servono ricerca e governance: la scienza non è “neutra”, è responsabilità.
  ]
)

#v(0.40cm)
#set text(size: 8.4pt)
#text(fill: rgb(80,80,80))[
  Fonte (YouTube): *Banquet speech — Geoffrey Hinton (estratto)* —
  https://www.youtube.com/watch?v=-f5WQAk3dYo
]
]


