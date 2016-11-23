<Qucs Schematic 0.0.5>
<Properties>
  <View=-32,-20,580,480,1,0,0>
  <Grid=10,10,1>
  <DataSet=diff1.dat>
  <DataDisplay=diff1.dpl>
  <OpenDisplay=1>
</Properties>
<Symbol>
</Symbol>
<Components>
  <_BJT Q2N3904_1 1 210 190 8 -26 0 0 "npn" 0 "6.734f" 0 "1" 0 "1" 0 "66.78m" 0 "0" 0 "74.03" 0 "0" 0 "6.734f" 0 "1.259" 0 "0" 0 "2" 0 "416.4" 0 "0.7371" 0 "0" 0 "0" 0 "1" 0 "0" 0 "10" 0 "4.493p" 0 "0.75" 0 "0.2593" 0 "3.638p" 0 "0.75" 0 "0.3085" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "301.2p" 0 "2" 0 "4" 0 "0.4" 0 "239.5n" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0>
  <_BJT Q2N3904_2 1 330 190 -79 0 1 2 "npn" 0 "6.734f" 0 "1" 0 "1" 0 "66.78m" 0 "0" 0 "74.03" 0 "0" 0 "6.734f" 0 "1.259" 0 "0" 0 "2" 0 "416.4" 0 "0.7371" 0 "0" 0 "0" 0 "1" 0 "0" 0 "10" 0 "4.493p" 0 "0.75" 0 "0.2593" 0 "3.638p" 0 "0.75" 0 "0.3085" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "301.2p" 0 "2" 0 "4" 0 "0.4" 0 "239.5n" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0>
  <R RC1 1 210 60 15 -26 0 1 "2k" 1 "26.85" 0 "european" 0>
  <R RC2 1 330 60 15 -26 0 1 "2k" 1 "26.85" 0 "european" 0>
  <GND * 1 430 90 0 0 0 0>
  <Vdc VCC 1 430 60 18 -26 0 1 "+12" 1>
  <R RE1 1 210 250 15 -26 0 1 "Re" 1 "26.85" 0 "european" 0>
  <R RE2 1 330 250 15 -26 0 1 "Re" 1 "26.85" 0 "european" 0>
  <Vdc VIN 1 90 220 18 -26 0 1 "Vin" 1>
  <GND * 1 90 250 0 0 0 0>
  <GND * 1 60 170 0 0 0 0>
  <Vdc VIN1 1 60 140 -52 -26 0 3 "Vin" 1>
  <.DC DC1 1 50 320 0 33 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 pV" 0 "no" 0 "150" 0 "no" 0 "none" 0>
  <Eqn Eqn1 1 70 390 -23 12 0 0 "Out=out1.V-out2.V" 1 "yes" 0>
  <.SW SW1 1 430 140 0 52 0 0 "SW2" 1 "list" 1 "Re" 1 "0" 0 "0" 0 "[0;10;30;80]" 1>
  <.SW SW2 1 440 290 0 52 0 0 "DC1" 1 "lin" 1 "Vin" 1 "-100m" 1 "+100m" 1 "101" 1>
  <Idc IEE 1 330 310 18 -26 0 1 "0" 1>
  <R REE 1 210 310 15 -26 0 1 "1.5k" 1 "26.85" 0 "european" 0>
  <GND * 1 330 400 0 0 0 0>
  <Vdc VEE 1 330 370 18 -26 0 1 "-12" 1>
</Components>
<Wires>
  <330 90 330 160 "out2" 280 120 55 "">
  <210 90 210 160 "out1" 230 120 56 "">
  <360 190 380 190 "" 0 0 0 "">
  <380 110 380 190 "" 0 0 0 "">
  <90 190 180 190 "in1" 150 160 47 "">
  <60 110 380 110 "in2" 150 130 76 "">
  <210 280 330 280 "" 0 0 0 "">
  <210 340 330 340 "" 0 0 0 "">
  <330 20 330 30 "" 0 0 0 "">
  <330 20 430 20 "" 0 0 0 "">
  <430 20 430 30 "" 0 0 0 "">
  <210 20 330 20 "" 0 0 0 "">
  <210 20 210 30 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
