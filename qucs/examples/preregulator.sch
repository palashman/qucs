<Qucs Schematic 0.0.15>
<Properties>
  <View=0,-18,860,800,1,0,30>
  <Grid=10,10,1>
  <DataSet=preregulator.dat>
  <DataDisplay=preregulator.dpl>
  <OpenDisplay=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <_BJT T1 1 260 100 -31 -35 0 1 "npn" 0 "1e-16" 0 "1" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "100" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
  <Vdc V1 1 110 200 -71 -24 1 1 "VBAT" 1>
  <GND * 1 110 250 0 0 0 0>
  <R R1 1 190 150 -26 15 0 0 "1k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R2 1 360 200 15 -26 0 1 "100" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.DC DC1 1 490 90 0 38 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.SW SW1 1 490 170 0 61 0 0 "DC1" 1 "lin" 1 "VBAT" 1 "4" 1 "14" 1 "101" 1>
  <Diode D1 1 260 200 15 -26 1 3 "1e-15 A" 0 "1" 0 "10 fF" 0 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "5.9V" 1 "1 mA" 1 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "Zener" 0>
</Components>
<Wires>
  <110 100 230 100 "in" 100 60 16 "">
  <360 100 360 170 "" 0 0 0 "">
  <290 100 360 100 "out" 360 60 48 "">
  <110 230 110 250 "" 0 0 0 "">
  <360 230 360 250 "" 0 0 0 "">
  <260 230 260 250 "" 0 0 0 "">
  <260 250 360 250 "" 0 0 0 "">
  <110 250 260 250 "" 0 0 0 "">
  <260 130 260 150 "" 0 0 0 "">
  <260 150 260 170 "" 0 0 0 "">
  <220 150 260 150 "" 0 0 0 "">
  <110 100 110 150 "" 0 0 0 "">
  <110 150 110 170 "" 0 0 0 "">
  <110 150 160 150 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 110 457 248 157 3 #c0c0c0 1 00 1 7 5 30 1 2.62807 1 5 1 -1 1 1 315 0 225 "" "" "">
	<"out.V" #0000ff 2 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 90 20 16 #000000 0 "Simple series regulator circuit.">
</Paintings>
