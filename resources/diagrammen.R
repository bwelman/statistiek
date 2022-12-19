library(DiagrammeR)

grViz("
    digraph voorbeeld {
      graph [layout = dot, rankdir = LR]
      
      # Definieer nodes
      node [shape = circle, 
            color = blue, 
            fontname = Helvetica, 
            penwidth = 2.0]
      1; 2
      {rank = same; 1; 2}
      
      node [shape = box, color = green]
      A[label = 'Aantal steekproeven']
      A11[label = 'Ratio/Interval']
      A12[label = 'Nominaal']
      A13[label = 'Ordinaal']
      A111[label = 'Normaal']
      A112[label = 'Niet Normaal']
      A21[label = 'Afhankelijk']
      A22[label = 'Onafhankelijk']
      A211[label = 'Ratio/Interval']
      A212[label = 'Nominaal']
      A213[label = 'Ordinaal']
      A2111[label = 'Normaal']
      A2112[label = 'Niet Normaal']
      A221[label = 'Ratio/Interval']
      A222[label = 'Nominaal']
      A223[label = 'Ordinaal']
      A2211[label = 'Normaal']
      A2212[label = 'Niet Normaal']
      
      node [shape = oval, color = red]
      T01[label = 'T-toets']
      T02[label = 'Tekentoets']
      T03[label = '&chi;@^{2}-toets']
      T04[label = 'Wilcoxon']
      T05[label = 'Mann-Whitney']
      {rank = same; T01; T02; T03; T04; T05}

      # Verbindingen
      A->{1 2}
      1->{A11 A12 A13}
      2->{A21 A22}
      A11->{A111 A112}
      A111->T01
      A112->T02
      A12->T03
      A13->T02
      A21->{A211 A212 A213}
      A211->{A2111 A2112}
      A2111->T01
      A2112->T04
      A212->T03
      A213->T04
      A22->{A221 A222 A223}
      A221->{A2211 A2212}
      A2211->T01
      A2212->T05
      A222->T03
      A223->T05

    }
      ")


