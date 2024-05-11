\version "2.25.12"

\header {
    title = "Panadera (Rumberos de Cuba, Guangancó Callejero)"
    subtitle = "canto + coro"
    tagline = " "
}
\layout {
   \numericTimeSignature
}

\score{

  \new StaffGroup  \with {
   \override StaffGrouper.staff-staff-spacing.basic-distance = 0
  }  { <<

    \new RhythmicStaff { 
      \time 4/4
      \set Timing.beamExceptions = #'()
      \set Timing.baseMoment = #(ly:make-moment 1/4)
      \set Timing.beatStructure = 1,1,1,1 
      \new Voice = "clave"{
        \stemUp
        \repeat unfold 20 \relative{c8. c16 r8. [c16] r8 [c8] c4} 
      }
    }

    \new RhythmicStaff {
      \new Voice = "melody" {
        \stemDown

        { \textMark "clave" R1 } | { \textMark "guagua" R1} | { \textMark "konga" R1} | R1 |
        r2 c8 c c c | R1 | R1 | R1 |
        R1 | r2 r4 c4~ | c16 c2.~ c8. | r2 r4 c8. c16~ |
        c16 c2...~ | c16 c2.~ c8. |
        
      }
    }

    \new Lyrics {
      \lyricsto "melody" {
        we re ire le...
        ha -- bla!
        pa -- na -- de -- ra
      }
    }

  >> }
}
