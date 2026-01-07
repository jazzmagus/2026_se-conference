// mq_guida_gentile_studio_layout_boxed.typ

#import "boxed-sheet-local.typ": *

// Wrapper comodo: usa i concept-block del boxed-sheet, ma nel tuo documento
#let docbox(body) = body

// ======================================================
// LAYOUT DOCUMENTO (il tuo, invariato)
// ======================================================

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
    #set text(size: 8pt)
    #grid(
      columns: (1fr, 1fr),
      align: (left, right),
      [Prof. Diego Fantinelli],
      context [Pagina #counter(page).display() di #counter(page).final().first()]
    )
  ]
)

// Tipografia
#set text(font: "IBM plex sans", size: 9.4pt)

// Paragrafi “newspaper”
#set par(
  justify: true,
  leading: 0.7em,
  first-line-indent: 0pt,
)

// Spazio tra paragrafi
#set block(spacing: 0.90em)

// Titoli: sans bold
#set heading(numbering: none)
#show heading: it => [
  #set text(font: "IBM plex sans", size: 10.5pt, weight: "bold")
  #it
]

// Helper per box evidenziati (idee chiave)
#let keybox(title, body) = [
  #block(
    inset: 8pt,
    radius: 2pt,
    stroke: 0.0pt,
  )[
    #set text(font: "IBM plex sans", weight: "bold")
    #title
    #v(0pt)
    #set text(font: "IBM plex sans", weight: "regular")
    #body
  ]
]

// ===== TESTATA =====
#align(center)[
  = Meccanica Quantistica — una guida gentile
  #text(font: "Helvetica", size: 12pt, weight: "regular")[
    Documento di studio (versione estesa) — conferenza 1h45’ + coffee break 5’
  ]
]

#v(0.2cm)
#line(length: 100%)
#v(0.15cm)

// ======================================================
// CONTENUTO (ora “boxed”)
// ======================================================

#docbox([
  #keybox(
    [Regola d’oro ],
    [
      - Non “spiegare tutto”: guida il pubblico da un’idea all’altra.
      - Un concetto per slide, un’immagine per concetto.
      - Quando introduci una parola nuova (quanto, fotone, entanglement, tunnel),
        fai subito un esempio concreto o una metafora.
    ]
  )
])

#v(0.40cm)

// ===== CORPO IN DUE COLONNE =====
#columns(2, gutter: 0.8cm)[

#docbox([
  = Struttura temporale (guida rapida)

  #keybox(
    [Timing consigliato (macro)],
    [
      + Apertura + POV: ~10’
      + Atto I (crisi classica / atomo): ~20’
      + Atto II (Planck → Einstein → Bohr): ~25’
      + Passo concettuale (dualismo / misura): ~10’
      + Entanglement + Bell (ponte): ~15’ \ *Coffee break: 5’*
      + Nobel 2020–2025 (tabella): ~12–15’
      + Sole + tunnel + Gamow: ~10’
      + Impatto economico / geopolitico: ~8–10’
      + Finale (Faggin → digitale → responsabilità): ~12–15’
    ]
  )
])

  // ======================================================
  // INTRO + POV
  // ======================================================

  #docbox([
    = Introduzione generale

    Questa conferenza non nasce con l’obiettivo di “insegnare la meccanica quantistica” in senso accademico.
    Nasce dal bisogno di capire davvero alcune idee che oggi sono ovunque: nei microchip, nei laser, nei sensori,
    nelle tecnologie digitali e perfino nei discorsi sull’intelligenza artificiale.

    La frase che regge tutto è una specie di paradosso: la meccanica quantistica è una teoria che “non capiamo”
    nel senso intuitivo classico, ma che funziona con una precisione incredibile. Non è un’opinione: è uno dei
    pilastri sperimentali della fisica moderna. Il prezzo però è alto: per descrivere ciò che accade nel mondo
    microscopico dobbiamo abbandonare alcune idee che, nel mondo macroscopico, sembrano ovvie.

    Quindi l’idea guida è questa: non stiamo entrando in un “mondo magico”, stiamo entrando in un mondo in cui
    le categorie classiche — traiettoria, posizione, proprietà ben definite — smettono di essere adatte.
  ])

  #docbox([
    = Il mio punto di vista (POV)

    Qui metti subito in chiaro che non stai facendo la “lezione del professore che sa”.
    Stai raccontando un percorso: sei partito da concetti che conoscevi “di nome” e hai scelto di tornare studente,
    cioè di prenderti il diritto di non capire subito.

    Questa cosa è importante perché crea un patto con chi ascolta: non serve capire tutto in tempo reale,
    serve seguire la storia e lasciare che alcune idee sedimentino.

    La modalità “studente” significa: leggere testi più avanzati, farsi domande, riscrivere con parole proprie,
    accettare il disagio. La modalità “insegnante” significa: selezionare cosa è essenziale, ridurre complessità
    senza tradire il significato, usare immagini e metafore.

    Il metodo (come lo dichiari nelle slide) è una triade:
    - scomporre (isolare le idee chiave),
    - riformulare (tradurre in immagini e analogie),
    - trasmettere (costruire una narrazione accessibile).
  ])

  #docbox([
    = Obiettivo della conferenza

    L’obiettivo non è far memorizzare formule, ma far capire perché la quantistica è necessaria.
    Vuoi che il pubblico esca con l’impressione:
    “ok, non so risolvere un esercizio di Schrödinger, ma ora capisco perché la realtà microscopica
    non può essere descritta come la realtà macroscopica”.

    Quindi:
    - userai analogie classiche (anche abusandone),
    - ma dichiarerai che a un certo punto vanno abbandonate,
    - perché la quantistica non è un’aggiunta “strana”: è un cambio di linguaggio.
  ])

  // ======================================================
  // IMPATTO ECONOMICO / GEO-POLITICO (USA–Cina–UE)
  // ======================================================

  #docbox([
    = Impatto economico e geopolitico (USA · Cina · UE)

    Qui devi far sentire che la MQ non è “un capitolo di fisica”:
    è un pezzo di economia mondiale e di competizione tecnologica.
  ])

  #docbox([
    == USA: “il dato” (30%)

    Circa il 30% del PIL degli Stati Uniti dipende da tecnologie nate dalla meccanica quantistica
    (semiconduttori, elettronica, fotonica, telecomunicazioni, imaging medico, ICT).

    Nota: evita di venderlo come numero sacro. Presentalo come ordine di grandezza:
    “non interessa il decimale: interessa la scala”.
  ])

  #docbox([
    == Cina: non solo economia, ma strategia

    Qui non serve una percentuale speculare.
    Serve l’idea: la Cina tratta il quantistico come infrastruttura strategica
    (calcolo, comunicazioni, sensori).

    Frase utile:
    #emph[Per la Cina la tecnologia quantistica è sovranità.]
  ])

  #docbox([
    == Unione Europea: dipendenza strutturale

    Anche per l’UE non c’è una percentuale unica ufficiale.
    Ma interi settori dipendono dalla MQ: microelettronica, fotonica, sanità avanzata,
    metrologia, industria di precisione.

    Messaggio: l’Europa non può permettersi di “non capire” questa storia,
    perché la vive già nell’industria.
  ])

  #docbox([
    == Quadro globale

    Quando nelle slide dici “il mondo sta spendendo”, chiarisci la traduzione corretta:
    non è (solo) investimento in laboratori.
    È economia che funziona grazie a tecnologie quantistiche mature,
    più investimenti per la prossima ondata (quantum computing, sensing, comm).

    Chiusura secca:
    #emph[La MQ è già un’infrastruttura dell’economia globale.]
  ])

  // ======================================================
  // ATTO I — CRISI CLASSICA
  // ======================================================

  #docbox([
    = Atto I — Quando la fisica classica smette di funzionare

    La prima parte serve a creare contrasto: prima mostri quanto la fisica classica è potente,
    poi mostri dove fallisce.

    Idea-guida (da ripetere come “ritornello”):
    #emph[la teoria classica non è sbagliata: è limitata.]
  ])

  #docbox([
    == Fisica classica (richiamo)

    Newton è un linguaggio deterministico: se conosco le forze, posso prevedere il moto.
    È utile far passare l’idea di “macchina del mondo”: causa → effetto → previsione.

    Nota da palco: evita tecnicismi; basta far sentire la solidità del paradigma.
  ])

  #docbox([
    == L’atomo classico e il problema fatale

    L’immagine planetaria è intuitiva: nucleo al centro, elettroni in orbita.
    Poi fai scattare la trappola:

    Una carica accelerata emette radiazione (elettromagnetismo classico).
    Emettere radiazione significa perdere energia.
    Perdere energia significa spirale verso il nucleo.
    Quindi: l’atomo dovrebbe collassare.

    Ma gli atomi sono stabili. Qui il pubblico sente il “crack” del modello.
  ])

  #docbox([
    == Primo colpo: energia non continua (idea-ponte)

    Prima ancora di raccontare i nomi, fai passare una frase-seme:
    #emph[“Forse, nel microscopico, l’energia non cambia in modo continuo.”]

    Serve solo a preparare Planck: non stai ancora “spiegando”, stai predisponendo.
  ])

  // ======================================================
  // ATTO II — PLANCK → EINSTEIN → BOHR (ordine coerente)
  // ======================================================

  #docbox([
    = Atto II — Nascita della meccanica quantistica (colpi successivi)

    Qui fai vedere che la rivoluzione non è un momento magico,
    ma una sequenza: problema → ipotesi → esperimento → modello.
  ])

  #docbox([
    == Planck (1900): il quanto

    Problema del corpo nero: la teoria classica produce risultati sensati solo in parte.
    Alle alte frequenze diverge (catastrofe ultravioletta).
    Non è “quasi giusta”: è strutturalmente sbagliata.

    Planck introduce l’ipotesi:
    $ E = h nu $

    La rivoluzione è quasi accidentale: Planck vuole salvare una formula, non riscrivere il mondo.
    Qui l’ironia è didatticamente utile: rende la storia umana.
  ])

  #keybox(
    [Da dire (in una frase)],
    [
      #emph[Planck non cerca i quanti: cerca una formula che funzioni.]
    ]
  )

  #docbox([
    == Einstein (1905): fotoni ed effetto fotoelettrico

    Qui rendi concreta la quantizzazione: se la luce scambia energia a pacchetti,
    allora esistono pacchetti reali: fotoni.

    Ancora formula-ancora:
    $ E = h nu <=> nu = c / lambda $
    quindi:
    $ E = h c / lambda $

    Messaggio: non conta quanto “forte” è la luce (intensità), conta la frequenza.
    Sopra una soglia accade l’emissione di elettroni, sotto no.
  ])

  #keybox(
    [Tre punchline utili],
    [
      - “Non è la quantità di luce: è il colore.”
      - “Intensità = quanti fotoni; frequenza = energia di ciascun fotone.”
      - “Einstein prende sul serio ciò che Planck aveva introdotto a malincuore.”
    ]
  )

  #docbox([
    == Bohr (1913): livelli energetici e salti

    Bohr risolve due problemi narrativamente perfetti:
    - stabilità dell’atomo,
    - righe spettrali (spettri discreti).

    Idea chiave: l’elettrone può occupare solo energie discrete.
    Niente “metà livello”.

    Passaggi tra livelli: assorbimento/emissione di un fotone:
    $ Delta E = h nu $

    Nota per te: Bohr è un modello di transizione (regole quantistiche su immagine classica).
    Va presentato come “primo modello che funziona”, non come teoria finale.
  ])

  // ======================================================
  // PASSO CONCETTUALE — DUALISMO + MISURA (breve, ma con wow controllato)
  // ======================================================

  #docbox([
    = Passo concettuale — Quando il linguaggio classico non basta

    Qui non segui la cronologia: fai una scelta narrativa.
    Anticipi un’idea per far capire perché la quantistica diventa “strana”
    nel senso profondo: non è solo quantizzazione, è descrizione probabilistica + ruolo della misura.
  ])

  #docbox([
    == De Broglie (1924): materia come onda

    Se la luce (onda) mostra un comportamento corpuscolare (fotoni),
    De Broglie fa il passo opposto: anche la materia può mostrare comportamento ondulatorio.

    Formula-ancora (da tenere in guida, non da “insegnare”):
    $ lambda = h / p $

    Il punto non è calcolare: è cambiare categoria mentale.
  ])

  #docbox([
    == Doppia fenditura / Mach–Zehnder: misura e informazione

    Lo schema da fissare è binario:

    - se non misuri “il cammino” → interferenza
    - se misuri “da dove passa” → l’interferenza sparisce

    Frase guida:
    #emph[Non è un difetto degli strumenti: è la struttura della teoria.]

    Versione “pulita” (da dire a voce):
    “Non è magia: è informazione.”
  ])

  // ======================================================
  // ENTANGLEMENT → BELL (ponte verso Nobel 2022)
  // ======================================================

  #docbox([
    = Entanglement — il cuore concettuale (senza formule)

    Qui devi essere gentile: l’obiettivo non è formalizzare,
    ma far capire che alcune proprietà esistono come relazione.
  ])

  #docbox([
    == Definizione gentile

    Entanglement significa: due particelle, dopo aver interagito,
    non sono più descrivibili separatamente.
    Formano un unico sistema anche se si separano nello spazio.

    Misurare una particella determina istantaneamente la correlazione con l’altra.
    Ma attenzione: #emph[correlazione non significa comunicazione].
  ])

  #keybox(
    [Metafore “sicure” (scegline una sola)],
    [
      - Guanti: “nella versione quantistica il guanto non è destro/sinistro finché non apri.”
      - Dadi correlati: “non so il numero, ma so che saranno correlati.”
      - Frase secca: “non hanno mai smesso di essere un sistema unico.”
    ]
  )

  #docbox([
    == Cosa NON è (da dire esplicitamente)

    - Non invia segnali più veloci della luce.
    - Non è telepatia tra particelle.
    - Non è “la particella che decide quando la guardi”.

    È una struttura statistica della teoria: risultati individuali casuali,
    correlazioni complessive rigorose.
  ])

  #docbox([
    = Bell → Nobel 2022: dalla filosofia all’esperimento

    EPR (1935) critica: “la teoria è incompleta”.
    Bell (1964) trasforma la disputa in un test sperimentale.
    Clauser/Aspect/Zeilinger portano il test nel mondo reale.

    Il messaggio: la natura non può essere descritta da teorie locali-realistiche.
  ])

  #keybox(
    [Da dire (in una riga)],
    [
      #emph[Qui la filosofia diventa un verdetto sperimentale.]
    ]
  )

  #docbox([
    = Coffee break
  ])

  // ======================================================
  // MQ COME TECNOLOGIA (2000–oggi)
  // ======================================================

  #docbox([
    = 2000–oggi — La quantistica come infrastruttura

    Questa sezione serve a far atterrare tutto:
    non è una teoria “strana” per specialisti,
    è una teoria che produce dispositivi e industria.
  ])

  #docbox([
    == Nobel 2022 (Aspect, Clauser, Zeilinger)

    Sottolinea:
    - esperimenti controllabili con fotoni entangled,
    - test robusti di Bell,
    - base per informazione e comunicazioni quantistiche.

    Nota: “Non è magia: è statistica sperimentale.”
  ])

  #docbox([
    == Atto III — Il Sole e l’effetto tunnel

    Blocco potentissimo: il microscopico governa il macroscopico.

    Problema classico: protoni si respingono (barriera coulombiana).
    A 15 milioni di gradi l’energia termica è alta, ma non basta “classicamente”.
    Soluzione quantistica: tunneling → probabilità non nulla.
  ])

  #docbox([
    == Gamow (idea)

    Tunneling come probabilità esponenzialmente piccola, ma nel Sole ci sono numeri enormi.
    Quindi “improbabile” diventa “inevitabile”.

    Da dire:
    #emph[Le stelle brillano grazie alla fisica quantistica.]
  ])

  // ======================================================
  // NOBEL 2025 — (come nelle tue slide) + IMPATTO REALE
  // ======================================================

  #docbox([
    = Nobel 2025 — Tunnel, superconduttività, controllo quantistico

    Qui presenti i tre scienziati come una storia in tre passaggi:

    - Clarke: il quantistico diventa osservabile (dispositivi a effetto tunnel, sensori).
    - Devoret: il quantistico diventa controllabile (circuiti quantistici stabili, qubit superconduttivi).
    - Martinis: il quantistico diventa operativo (processori, qubit come macchina).
  ])

  #keybox(
    [Messaggio chiave (da ripetere)],
    [
      #emph[Senza effetto tunnel controllato, i qubit superconduttivi non esistono.]
    ]
  )

  #docbox([
    == Impatto reale: cosa cambia nel mondo?

    Qui metti una frase netta (anti-hype):
    Non è “una promessa lontana”: molte applicazioni sono già presenti.

    Tre esempi chiari:
    - sensori quantistici ultra-sensibili (misure di campi debolissimi),
    - dispositivi superconduttivi (giunzioni Josephson come mattoni),
    - piattaforme di qubit superconduttivi (calcolo quantistico sperimentale e pre-industriale).
  ])

  #docbox([
    = Due slide “impatto reale” (versione testo continuo)

    Se vuoi rispecchiare le nuove slide, qui hai il copione:

    + “Dalla teoria alla tecnologia”
      - sensori
      - circuiti
      - qubit

    +  “Il vero filo conduttore”
      - da limite a risorsa
      - da disturbo a meccanismo controllato
      - da curiosità a base dell’ingegneria quantistica
  ])

  #docbox([
  = Federico Faggin — dal “quanto” al digitale

  Se devo scegliere un volto per chiudere la storia, scelgo Faggin perché è un ponte vivente:
  prende il mondo quantistico (fisica dello stato solido, semiconduttori, effetto tunnel, livelli energetici)
  e lo trasforma in una macchina universale: il microprocessore.

  Questo passaggio è narrativamente potente perché fa capire una cosa:
  la quantistica non è solo “strana”. È #emph[ingegnerizzabile].

  Nel 1971, con l’Intel 4004, succede un salto di scala:
  ciò che prima era un armadio di elettronica diventa un chip.
  Non è un dettaglio tecnico: è la nascita del digitale come infrastruttura quotidiana.
])

#keybox(
  [Punchline (da palco)],
  [
    #emph[Il microprocessore è quantistica “impacchettata” in un oggetto affidabile.]
  ]
)
#docbox([
  == Perché un chip è già fisica quantistica (in 4 idee)

  - #emph[Livelli energetici e bande:] nei solidi l’energia degli elettroni non è “continua” come nella fantasia classica,
    ma organizzata (bande, gap). È la versione “materiale” dei livelli di Bohr.
  - #emph[Drogaggio:] aggiungere impurità significa cambiare la probabilità con cui gli elettroni si muovono nel materiale.
  - #emph[Giunzioni:] una giunzione p–n è una valvola quantistica “macroscopica”: permette o impedisce flussi di carica
    in modo controllabile.
  - #emph[Tunnel:] in molte strutture reali gli elettroni possono attraversare barriere sottili per effetto tunnel.
    Questo non è un difetto: è una risorsa di progetto.

  Messaggio: non serve “capire ogni dettaglio”.
  Serve vedere la continuità: #emph[Planck → Bohr → stato solido → transistor → microprocessore.]
])
#docbox([
  == La vera rivoluzione: controllo e affidabilità

  La cosa impressionante non è che esista un effetto quantistico.
  La cosa impressionante è che sappiamo #emph[ripeterlo] miliardi di volte,
  con errori piccolissimi, a costi bassi, dentro oggetti che portiamo in tasca.

  Questo è il filo conduttore degli ultimi decenni:
  - prima la quantistica era una teoria per spiegare esperimenti difficili;
  - poi diventa una tecnologia perché impariamo a controllare rumore, difetti, temperatura, scala industriale.

  In altre parole: #emph[il problema non è “capire” la MQ, è “domarla”.]
])
#docbox([
  = Dal microprocessore ai qubit: stessa traiettoria, più difficile

  Dopo il microprocessore, la traiettoria sembra naturale:
  “se controlliamo gli elettroni nei semiconduttori, possiamo controllare anche stati quantistici più delicati”.

  Ma qui arriva la differenza cruciale:
  - nel digitale classico, il rumore lo combatti con soglie (0/1) e ridondanza;
  - nel quantistico, il rumore #emph[ti cancella l’informazione] (decoerenza).

  Quindi l’ingegneria quantistica non è “più veloce”.
  È #emph[un altro mestiere]: isolare, raffreddare, schermare, correggere errori,
  e far convivere laboratorio e industria.
])
#keybox(
  [Da dire (in una riga)],
  [
    #emph[Il computer quantistico è difficile non perché è strano, ma perché è delicato.]
  ]
)

#docbox([
  = Faggin, AI e la domanda finale (senza hype)

  Negli ultimi anni Faggin è diventato anche una voce pubblica sul tema
  “cosa significa costruire intelligenza”.

  Qui conviene essere chiari:
  - le reti neurali sono strumenti potentissimi,
  - ma sono anche sistemi opachi, che possono amplificare errori, bias e manipolazione,
  - e soprattutto spostano potere: chi controlla dati e infrastrutture controlla decisioni.

  Questo chiude perfettamente la conferenza, perché il filo è lo stesso:
  #emph[quando una teoria diventa tecnologia, diventa anche responsabilità.]
])
#keybox(
  [Domanda di chiusura (da palco)],
  [
    #emph[Non è più “possiamo farlo?” ma “chi lo governa, e con quali regole?”.]
  ]
)


  // ======================================================
  // CHIUSURA — ponte verso digitale / responsabilità
  // ======================================================

  #docbox([
    = Chiusura — responsabilità e futuro

    Qui il tono deve cambiare: meno “wow”, più “ok, e quindi?”.
    Il punto finale non è che “il mondo è strano”,
    ma che adesso sappiamo costruire oggetti basati su quelle stranezze.

    Domanda finale utile:
    “Non è più ‘possiamo farlo?’ ma ‘siamo pronti a governarlo?’”
  ])
#docbox([
  == Una frase-ponte finale

  #emph[La meccanica quantistica ci ha insegnato due cose:]
  che il mondo è più strano di quanto immaginiamo,
  e che possiamo costruire tecnologie affidabili proprio usando quella stranezza.
])

]

