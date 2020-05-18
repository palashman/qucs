# Qucs 0.1.0  ../../tests/AC_bandpass.prj/bandpass.sch

GND #() *(_net0);
GND #() *(_net1);
GND #() *(_net2);
GND #() *(_net3);
C #(.C(0.1 uF), .V(), .Symbol(neutral)) C1(_net39, _net5);
R #(.R(10 kOhm), .Temp(26.85), .Tc1(0.0), .Tc2(0.0), .Tnom(26.85), .Symbol(european)) R2(_net2, _net7);
R #(.R(10 kOhm), .Temp(26.85), .Tc1(0.0), .Tc2(0.0), .Tnom(26.85), .Symbol(european)) R5(_net3, _net9);
opa227 #(.File(opa227.sch)) OPA227_1(_net5, _net7, _net12);
opa227 #(.File(opa227.sch)) OPA227_2(_net26, _net9, _net15);
GND #() *(_net18);
Vac #(.U(1 V), .f(1 kHz), .Phase(0), .Theta(0)) V1(_net39, _net18);
Eqn #(.y1(dB(Vout.v)), .y2(phase(Vout.v)), .Export(yes)) Eqn1();
R #(.R(10 kOhm), .Temp(26.85), .Tc1(0.0), .Tc2(0.0), .Tnom(26.85), .Symbol(european)) R1(_net7, _net12);
R #(.R(10 kOhm), .Temp(26.85), .Tc1(0.0), .Tc2(0.0), .Tnom(26.85), .Symbol(european)) R4(_net9, _net15);
C #(.C(0.1 uF), .V(), .Symbol(neutral)) C2(_net1, _net26);
R #(.R(1591 Ohm), .Temp(26.85), .Tc1(0.0), .Tc2(0.0), .Tnom(26.85), .Symbol(european)) R3(_net5, _net0);
R #(.R(1.59 Ohm), .Temp(26.85), .Tc1(0.0), .Tc2(0.0), .Tnom(26.85), .Symbol(european)) R6(_net12, _net26);