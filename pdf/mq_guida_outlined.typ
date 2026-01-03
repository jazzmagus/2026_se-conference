// mq_guida_gentile_studio_layout_boxed.typ

#import "boxed-sheet-local.typ": *

// Wrapper comodo: usa i concept-block del boxed-sheet, ma nel tuo documento
#let docbox(body) = concept-block(body: body)

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
#set text(font: "Georgia", size: 9.0pt)

// Paragrafi “newspaper”
#set par(
  justify: true,
  leading: 0.8em,
  first-line-indent: 0pt,
)

// Spazio tra paragrafi
#set block(spacing: 0.90em)

// Titoli: sans bold
#set heading(numbering: none)
#show heading: it => [
  #set text(font: "Optima", weight: "bold")
  #it
]

// Helper per box evidenziati (idee chiave)
#let keybox(title, body) = [
  #block(
    inset: 8pt,
    radius: 2pt,
    stroke: 0.0pt,
  )[
    #set text(font: "Optima", weight: "bold")
    #title
    #v(0pt)
    #set text(font: "Optima", weight: "regular")
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
  == Contesto

  #quote(block: true)[
    Questo documento serve come supporto per lo studio e la preparazione della conferenza.
    È costruito seguendo la struttura delle slide (atti e blocchi tematici) e mantiene un
    tono discorsivo: l’obiettivo non è essere “sintetici”, ma avere un testo che permetta
    di ripassare concetti, collegamenti narrativi, passaggi logici e formule essenziali.
  ]

  #keybox(
    [Spunti di riflessione (prima di provare la conferenza)],
    [
      - #emph[
        Quali sono i 3 passaggi in cui la fisica classica “si rompe” davvero, e come li farai
        percepire al pubblico senza fare una lezione universitaria?
      ]

      - #emph[
        Dove vuoi che il pubblico si meravigli (effetto “wow”) e dove invece vuoi che si
        senta “accompagnato” con calma (effetto “ok, posso seguirlo”)?
      ]

      - #emph[
        Qual è la domanda finale che vuoi lasciare aperta — e come ti assicuri che
        sia collegata a tutto il percorso precedente (non solo alla slide finale)?
      ]
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
        - Apertura + POV: ~10’
        - Atto I (crisi classica / atomo): ~20’
        - Atto II (Planck → Bell): ~30’
        - Coffee break: 5’
        - 2000–oggi (Nobel e tecnologie): ~15’
        - Atto III (Sole / tunnel / Gamow): ~15’
        - Nobel 2025 (tunnel / qubit supercond.): ~10’
        - Atto IV (Faggin + ponte digitale): ~10’
        - Chiusura (Hinton + responsabilità): ~10’
      ]
    )
  ])

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

    Il tuo metodo (come lo dichiari nelle slide) è una triade:
    - scomporre (capire i dettagli e isolare le idee chiave),
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
    - userai analogie classiche, anche abusandone,
    - ma dichiarerai che a un certo punto vanno abbandonate,
    - perché la quantistica non è un’aggiunta “strana”, è un cambio di linguaggio.
  ])

  #docbox([
    = Atto I — Quando la fisica classica smette di funzionare

    La prima parte serve a creare contrasto: prima mostri quanto la fisica classica è potente, poi mostri dove fallisce.

    Parti dalle “due regole” della fisica:
    (1) esperimenti ripetibili,
    (2) equazioni coerenti col resto della fisica che già funziona.

    La meccanica quantistica nasce perché a fine Ottocento / inizio Novecento emergono dati sperimentali
    che la fisica classica non riesce a contenere.
  ])

  #docbox([
    == Fisica classica (richiamo)

    Qui puoi ricordare Newton e la struttura deterministica.
    Le tre leggi sono un linguaggio: se conosco le forze, conosco il moto.

    Formula-ancora (anche solo come richiamo mentale):
    $ sum vec(F) = 0 => vec(v) = "costante" $
    $ sum vec(F) = m vec(a) $
    $ vec(F)_("AB") = - vec(F)_("BA") $

    Non è che Newton è “sbagliato”: è che non è universale.
    Questo punto va detto in modo chiaro, perché evita l’effetto “la scienza cambia idea a caso”.
    No: cambia perché aumenta la capacità di misurare e quindi emergono nuovi fenomeni.
  ])

  #docbox([
    == L’atomo classico e il problema fatale

    L’immagine planetaria è intuitiva: nucleo al centro, elettroni in orbita.
    Ma qui fai scattare la trappola: un elettrone in orbita è una carica accelerata.
    Secondo l’elettromagnetismo classico, una carica accelerata emette radiazione.
    Emettere radiazione significa perdere energia. Perdere energia significa avvicinarsi al nucleo.
    Quindi: l’atomo dovrebbe collassare.

    La frase cruciale è quella che hai nelle slide: “Eppure… gli atomi sono stabili”.
    È un punto narrativo forte: la realtà osservata smentisce il modello.
    Serve un nuovo quadro teorico.
  ])

  #docbox([
    == Prima idea rivoluzionaria: energia non continua

    Qui introduci l’idea di quantizzazione come “soluzione iniziale”:
    l’energia non è continua, gli elettroni hanno livelli discreti.
    Quindi non possono perdere energia a piacere, ma solo con salti.

    Questo spiega:
    - stabilità,
    - spettri discreti (righe),
    - e prepara l’idea che la realtà microscopica sia “a pacchetti”.
  ])

  #docbox([
    = Atto II — Nascita della meccanica quantistica

    Qui entri nella timeline e fai vedere che la rivoluzione è una serie di colpi,
    non un singolo “momento magico”.
  ])

  #docbox([
    == Planck (1900): il quanto

    Il problema del corpo nero mostra una frattura.
    La teoria classica funziona a basse frequenze, ma alle alte frequenze va all’infinito
    (catastrofe ultravioletta). È importante dire che non è “quasi giusta”: è strutturalmente sbagliata.

    Planck introduce l’ipotesi:
    $ E = h nu $

    La rivoluzione è quasi accidentale: Planck voleva salvare una formula, non riscrivere il mondo.
    Questa ironia è utile perché abbassa il tono “mitologico” e rende la storia umana.
  ])

  #docbox([
    == Einstein (1905): fotoni ed effetto fotoelettrico

    Qui rendi concreta la quantizzazione:
    se la luce è quantizzata, allora esistono pacchetti di energia: fotoni.

    Ancora formula:
    $ E = h nu <=> nu = c / lambda $
    Quindi anche:
    $ E = h c / lambda $

    Messaggio: non conta quanto “forte” è la luce (intensità), conta la frequenza.
    Sopra una soglia succede qualcosa, sotto no.

    Qui puoi dire la nota che hai: Nobel per questo, non per la relatività.
  ])

  #docbox([
    == Bohr (1913): livelli energetici

    Bohr introduce orbite ammesse e livelli discreti.
    Una formula-ancora tipica è:
    $ L = n ℏ $

    Qui la parte didattica è:
    - spieghi che Bohr stabilizza l’atomo,
    - ma è una teoria di transizione (concettualmente fragile),
    - perché mette regole quantistiche sopra un’immagine classica (orbita).
  ])

  #docbox([
    == Compton (1923): il fotone è reale

    Con Compton il fotone prende corpo fisico:
    la luce scambia quantità di moto con l’elettrone.
    La formula che hai:
    $ Delta lambda = (h/(m_e c))(1 - cos theta) $

    Il pubblico non deve capirla nei dettagli: deve capire cosa significa.
    Significa che la luce si comporta come particella in un urto.
  ])

  #docbox([
    == Heisenberg e Schrödinger (1925–27): nuova meccanica

    Qui arriva il cuore concettuale:
    - niente traiettorie definite,
    - esistono osservabili,
    - la funzione d’onda descrive probabilità.

    Formula probabilistica:
    $ P(x) = |psi(x)|^2 $

    Equazione di Schrödinger (puoi averla qui per studio completo):
    $ i ℏ ∂ψ/∂t = - (ℏ^2 / (2 m)) ∇^2 ψ + V ψ $

    Qui è utile la frase che hai già nelle note: è l’analogo quantistico della II legge di Newton.
    Non perché “spiega la stessa cosa”, ma perché gioca un ruolo simile: è l’equazione di evoluzione.
  ])

  #docbox([
    == Indeterminazione

    Qui chiarisci l’equivoco:
    non è limite degli strumenti, è limite della natura.
    Formula:
    $ Delta x Delta p ≥ ℏ/2 $

    E spieghi cosa sono Δx e Δp: dispersioni statistiche, non errori.
  ])

  #docbox([
    == Entanglement: EPR e Bell

    Questa parte è delicata ma narrativamente potentissima.
    EPR (1935) critica la MQ: se due sistemi distanti si correlano istantaneamente,
    sembra violare l’idea di località.

    Bell (1964) trasforma filosofia in esperimento: produce disuguaglianze verificabili.
    Forma schematica che hai anche nelle slide:
    $ |⟨A B⟩| ≤ 2 $

    Il punto non è la formula, ma la conseguenza:
    gli esperimenti violano le disuguaglianze → il mondo non è descrivibile da una teoria locale-realistica.

    Qui puoi dire: “Einstein aveva torto?” — non come insulto, ma come svolta storica.
  ])

  #docbox([
    = Coffee break

    Questo è un momento utile: “respirate”.
    Hai appena portato il pubblico in un luogo in cui la realtà è probabilistica e non-locale.
    Il break serve anche come decompressione cognitiva.
  ])

  #docbox([
    = Dal 2000 a oggi — MQ come tecnologia

    Questa sezione serve a mostrare che non è “solo teoria strana”.
  ])

  #docbox([
    == Nobel 2022 (Aspect, Clauser, Zeilinger)

    Sottolinei:
    - esperimenti controllabili con fotoni entangled,
    - test robusti delle disuguaglianze,
    - base per crittografia e informazione quantistica.

    Qui il messaggio: “non è magia, è statistica sperimentale”.
  ])

  #docbox([
    == Nobel 2023 (attosecondi)

    Qui porti la scala temporale:
    $ 1\,upright("as") = 10^{-18}\,upright("s") $

    “Fotografare” gli elettroni.
    È un passaggio potente perché collega la funzione d’onda a strumenti che ne vedono l’evoluzione.
  ])

  #docbox([
    == Nobel 2024 (quantum dots)

    Qui fai atterrare la quantistica nella materia.
    Nanocristalli → livelli quantizzati.
    Il colore dipende dalla dimensione.

    Collegamento circolare con Planck:
    $ E = h nu $
    Se cambia E, cambia ν, quindi cambia il colore.
  ])

  #docbox([
    = Atto III — Il Sole e l’effetto tunnel

    Qui hai uno dei blocchi più efficaci: il microscopico che governa il macroscopico.

    Problema classico:
    protoni si respingono.
    A 15 milioni di gradi l’energia termica è alta, ma non basta a superare la barriera coulombiana.

    Soluzione quantistica:
    tunneling → probabilità non nulla.
  ])

  #docbox([
    == Formule (Gamow / WKB / picco)

    Formula di Gamow (quella che hai):
    $ T ≈ exp(- (2 / ℏ) ∫_(x_1)^(x_2) sqrt(2 m (V(x) - E)) d x) $

    E poi la versione più generale WKB:
    $ T ≈ exp(- (2 / ℏ) ∫_(x_1)^(x_2) sqrt(2 m (V(x) - E)) d x) $

    Poi il concetto di “picco di Gamow” come prodotto di due esponenziali:
    termine termico Maxwell-Boltzmann e termine tunneling:
    $ P(E) ∝ exp(-E / (k T)) · exp(-b / sqrt(E)) $

    Qui la frase da ricordare:
    “Le stelle brillano grazie alla fisica quantistica”.
  ])

  #docbox([
    = Nobel 2025 — Tunnel, superconduttività, controllo quantistico

    (Nota: nel documento di studio puoi anche ricordarti la narrativa interna)
    Qui presenti i tre scienziati come una storia in tre passaggi:

    - Clarke: il quantistico diventa osservabile (sistemi macroscopici, dispositivi a effetto tunnel, sensori).
    - Devoret: il quantistico diventa controllabile (qubit superconduttivi, circuito come piattaforma quantistica).
    - Martinis: il quantistico diventa operativo (processori, supremazia quantistica, qubit come macchina).

    Il filo conduttore non è la tecnologia in sé: è l’effetto tunnel come risorsa.
  ])

  #docbox([
    = Atto IV — Faggin e il ponte verso il digitale

    Qui fai un ponte molto concreto:
    Faggin non è un fisico quantistico, ma ha trasformato i principi quantistici dei semiconduttori
    in tecnologia quotidiana.

    Silicon gate, microprocessore: senza MQ non esiste elettronica moderna.
    Puoi collegare:
    - bande di valenza e conduzione,
    - drogaggio,
    - tunnel nei dispositivi nanometrici,
    - probabilità degli stati elettronici.

    Poi puoi aprire (senza entrare in troppo dettaglio) il lato “coscienza” come aggancio filosofico,
    coerente con i temi quantistici (osservatore, informazione, non-località) ma dichiarando che è
    una prospettiva più interpretativa che tecnica.
  ])

  #docbox([
    = Chiusura — Hinton e responsabilità

    Chiudi con l’idea che ogni calcolo è fisica.
    Quindi ogni “intelligenza” artificiale ha costo energetico e termodinamico.
    Richiama implicitamente Landauer: informazione ↔ energia (anche senza fare lezione).

    Messaggio:
    la scienza non è neutra.
    le tecnologie non sono inevitabili.
    il futuro va discusso e governato.

    Domanda finale utile da lasciare:
    “Non è più ‘possiamo farlo?’ ma ‘siamo pronti a governarlo?’”
  ])

]

