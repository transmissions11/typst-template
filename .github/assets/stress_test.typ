#import "../../template.typ": *

#show: themed_document.with(
  title: "Typst Stress Test",
  author: "Transmissions11",
  toc: true,
  heading_numberings: ("I.I.",),
  heading_font: "Libertinus Serif",
  title_align: left,
)

#let filler = lorem(100)
#let vars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#$%^&*()-=_+/.,<>?~[]{}\|"
#for c in vars [

  = Section #c

  #filler and some inline $sin(theta)^2 + cos(theta)^2 = 1$.

  Some non-inline, non-labled:

  $ "CS"_(i)(p) equiv underbrace(max(0, v_i - p), "An underbrace!") $

  == Subsection #c

  Some inline labled:

  $ underbrace(EE[B_i|p_(B i) = H] - EE[B_i|p_(B i) = L], "LHS") != EE[D_(i)(H) - D_(i)(L)] $#label(c)

  Via #ref(label(c)), we know #filler

  === Subsubsection #c

  #filler

  #theorem("Theorem")[
    #filler
    #proof[
      #filler
      $ 1 + sum_n (1 / n) < oo $#label(c + "proof")
      This completes the proof.
    ]
  ]#label(c + "theo")

  #filler Via #ref(label(c + "proof")), we #filler

  #example("Example")[
    #filler

  ]

  #filler

  #definition("Definition")[
    #filler
  ]#label(c + "def")


  #filler

  #lemma("Lemma")[
    #filler
  ]

  #filler

  #corollary("Corollary")[
    #filler
    $ a + b + c + sum_n 1 / n < oo $#label(c + "coreqn")
  ]#label(c + "cor")

  Via #ref(label(c + "theo")) and #ref(label(c + "def")) and #ref(label(c + "cor")) we #filler. This also follows via #ref(label(c + "coreqn")).

]
