\version "2.25.12"

% font size modifier, used  to make textmarks smaller (or larger)
fs = -3

\header {
    title = "Panadera (Rumberos de Cuba, Guangancó Callejero)"
    subtitle = "with a laid back syncopated feel, grey highlights indicate cantante singing"
    tagline = " "
}

\score{

  \layout{
  \numericTimeSignature
  system-system-spacing =
    #'((basic-distance . 2) 
       (minimum-distance . 2)
       (padding . 2)
       (stretchability . 30)) % defaults: 12, 8, 1, 60

  }

  \new StaffGroup {
    <<
      
    \new RhythmicStaff \with {
      \magnifyStaff #5/7
    } { 
      \time 4/4
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/4)
      \set Timing.beatStructure = 1,1,1,1 
      \new Voice = "clave"{
        \stemUp
        {c8. c16 r8. [c16] r8 [c8] c4 } \break
        \repeat unfold 25 {
          \repeat unfold 4 {c8. c16 r8. [c16] r8 [c8] c4 } \break
          }
                {c8. c16 r8. [c16] r8 [c8] c4 } 
                        {c8. c16 r8. [c16] r8 [c8] c4 } 
                                {c8. c16 r8. [c16] r8 [c8] c4 } 
        c1 
      }
    }

    \new RhythmicStaff {

      \new Voice = "melody" {
        \stemDown

        { \tweak font-size \fs \textMark "clave" R1 } | 

        { \tweak font-size \fs \textMark "guagua" R1} |
        { \tweak font-size \fs \textMark "tumbadoras" R1} | 
        R1 | 
        r2 \staffHighlight "lightgrey" {\tweak font-size \fs \textMark "diana" r2} | 
        
        R1 |
        R1 |
        R1 |
        r2 r4 c4~ |
 
        c16 c2... \stopStaffHighlight |
        r2 r4  c8 c |
        c1 |
        c1 |

        \staffHighlight "lightgrey" {\tweak font-size \fs \textMark "llegó la..." R1 } |
        r2 r4 \stopStaffHighlight c8 c |
        c1 |
        c1 |

        r2 c8 c8 c8 c8 |
        c r8 r2 \staffHighlight "lightgrey" {\tweak font-size \fs \textMark "??chileño y polaco..." r4 } |
        R1 \stopStaffHighlight |
        R1 |

        r2 \staffHighlight "lightgrey" {\tweak font-size \fs \textMark "??chileño y polaco..." r2 } |
        R1 |
        r2 r8. c16~ c8. c16 |
        r4 \stopStaffHighlight r c8 c c c |

        c8 r r2 r4 |
        c8 r r2 c8 c |
        c1 |
        c1 |

        \staffHighlight "lightgrey" {\tweak font-size \fs \textMark "werei werele..." R1 } |
        R1 |
        R1 \stopStaffHighlight |
        R1 |

        r4 \staffHighlight "lightgrey" {\tweak font-size \fs \textMark "llegó la..." r4 } r2 |
        R1 \stopStaffHighlight |
        R1 |
        \staffHighlight "lightgrey" {\tweak font-size \fs \textMark "cumpliendo con..." R1 } |

        R1 \stopStaffHighlight |
        R1 |
        \staffHighlight "lightgrey" {\tweak font-size \fs \textMark "ay demonstrando..." R1 } |
        R1 |

        R1 |
        R1 |
        R1 \stopStaffHighlight
        R1 |

        \staffHighlight "lightgrey" {\tweak font-size \fs \textMark "con sacrificio y su dolor..." R1 } |
        R1 | \stopStaffHighlight
        R1 | 
        \staffHighlight "lightgrey" {\tweak font-size \fs \textMark "con su linda..." R1 } |

        R1 | \stopStaffHighlight
        R1 |
        r4 \staffHighlight "lightgrey" {\tweak font-size \fs \textMark "brindando al trabajador..." r } r2 |
        R1 |

        r2 \stopStaffHighlight r2 |
        r4 \staffHighlight "lightgrey" {\tweak font-size \fs \textMark "los panes que..." r } r2 |
        R1 |
        R1 |

        R1 | \stopStaffHighlight
        r2 \staffHighlight "lightgrey" {\tweak font-size \fs \textMark "y si pruebas..." r2 } |
        R1 | \stopStaffHighlight
        r2 c4 c8. c16 |

        c1 |  
        c1 |
        \staffHighlight "lightgrey" {\tweak font-size \fs \textMark "wara ilewele..." R1 } |
        R1 |

        R1 |
        r2 r4 c4 |
        c1 | \stopStaffHighlight
        r2 r4  c8 c |

        c1 |
        c2.\fermata \staffHighlight "lightgrey" {\tweak font-size \fs \textMark "aquí está..." r4 }  |
        R1 |
        r2 \stopStaffHighlight r4 c8 c |

        c1 |
        c1 |
        r2 c8 c8 c8 c8 |
        c r8 r2 \staffHighlight "lightgrey" {\tweak font-size \fs \textMark "??chileño y polaco..." r4 } |

        R1 \stopStaffHighlight |
        R1 |
        r2 \staffHighlight "lightgrey" {\tweak font-size \fs \textMark "??chileño y polaco..." r2 } |
        R1 |

        r2 r8. c16~ c8. c16 |
        r4 \stopStaffHighlight r c8 c c c |
        c8 r r2 r4 |
        c8 r r2 c8 c |

        c1 |
        c2 \staffHighlight "lightgrey" {\tweak font-size \fs \textMark "(montuno starts here) pan panadera..." r2 } |
        R1 |
        R1 | \noBreak
        R1 | \break

        \repeat volta 4 {
          {\tweak font-size \fs \textMark "rep. till next coro presentation (4x on the recording)" r2 } \stopStaffHighlight c8 c c c |
          c4 c8 c c c c c | \noBreak
          c \staffHighlight "lightgrey" r8 r4 r2 | \noBreak
          R1 | \stopStaffHighlight
        } 

        \repeat volta 4 {
          {\tweak font-size \fs \textMark "rep. till next coro presentation (5x on the recording)" r8 } c c c c r8 c r16 c |
          r c8 c c c c c c c16 |
          \staffHighlight "lightgrey" R1 \noBreak |
          R1 | \stopStaffHighlight
        } \break

        \repeat volta 4 {
          {\tweak font-size \fs \textMark "rep. till cantante calls for the coda (12x on the recording)" r8 } c c c c c c4 |
          \staffHighlight "lightgrey"
          R1 | \stopStaffHighlight
        } \break

      \staffHighlight "lightgrey" R1 | \noBreak \stopStaffHighlight
      r2 r4 c8 c |
      c1 |
      c1 |
      r1 |
      }
    }

    \new Lyrics {
      \override LyricText. #'font-size = #-1
      \lyricsto "melody" {
        ha -- bla
        pa -- na -- de -- ra
        pa -- na -- de -- ra
        pa -- na -- de -- ra -- pan
        di -- ce
        pa -- na -- de -- ra pan
        pan
        pa -- na -- de -- ra
        te co -- mes vein -- te
        di -- lo
        pa -- na -- de -- ra
        pa -- na -- de -- ra
        pa -- na -- de -- ra -- pan
        ha -- bla
        pa -- na -- de -- ra pan
        pan
        pa -- na -- de -- ra
        pan pa -- na -- de -- ra
        lle -- gó la pa -- na -- de -- ra
        yo trai -- go un-pan pan pan
        que no lo ven -- de qual -- quie -- ra
        pa -- na -- de -- ri -- ta pan
        pa -- na -- de -- ra

      }
    }
  >>
  }
}
