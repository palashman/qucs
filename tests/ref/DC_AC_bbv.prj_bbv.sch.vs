R #(.R(12), .Temp(26.85), .Tc1(0.0), .Tc2(0.0), .Tnom(26.85), .Symbol(european)) RE1(net_130_370, net_130_310);
R #(.R(650), .Temp(26.85), .Tc1(0.0), .Tc2(0.0), .Tnom(26.85), .Symbol(european)) R1(net_130_150, net_130_90);
_BJT #(.Type(npn), .Is(2e-15), .Nf(1), .Nr(1), .Ikf(0.01), .Ikr(0.10), .Vaf(100), .Var(10), .Ise(0), .Ne(2.0), .Isc(0), .Nc(2.0), .Bf(300), .Br(5.67), .Rbm(0), .Irb(0), .Rc(0), .Re(0), .Rb(0), .Cje(0), .Vje(0.75), .Mje(0.33), .Cjc(0), .Vjc(0.75), .Mjc(0.33), .Xcjc(1.0), .Cjs(0), .Vjs(0.75), .Mjs(0), .Fc(0.5), .Tf(0.0), .Xtf(0.0), .Vtf(0.0), .Itf(0.0), .Tr(0.0), .Temp(26.85), .Kf(0.0), .Af(1.0), .Ffe(1.0), .Kb(0.0), .Ab(1.0), .Fb(1.0), .Ptf(0.0), .Xtb(0.0), .Xti(3.0), .Eg(1.11), .Tnom(26.85), .Area(1.0)) btgn1(net_100_220, net_130_190, net_130_250, net_130_190);
L #(.L(3 nH), .I()) L1(net_20_220, net_80_220);
R #(.R(140), .Temp(26.85), .Tc1(0.0), .Tc2(0.0), .Tnom(26.85), .Symbol(european)) RF1(net_220_280, net_160_280);
_BJT #(.Type(npn), .Is(1e-15), .Nf(1), .Nr(1), .Ikf(0.01), .Ikr(0.10), .Vaf(100), .Var(10), .Ise(0), .Ne(2.0), .Isc(0), .Nc(2.0), .Bf(300), .Br(5.67), .Rbm(0), .Irb(0), .Rc(0), .Re(0), .Rb(0), .Cje(0), .Vje(0.75), .Mje(0.33), .Cjc(0), .Vjc(0.75), .Mjc(0.33), .Xcjc(1.0), .Cjs(0), .Vjs(0.75), .Mjs(0), .Fc(0.5), .Tf(0.0), .Xtf(0.0), .Vtf(0.0), .Itf(0.0), .Tr(0.0), .Temp(26.85), .Kf(0.0), .Af(1.0), .Ffe(1.0), .Kb(0.0), .Ab(1.0), .Fb(1.0), .Ptf(0.0), .Xtb(0.0), .Xti(3.0), .Eg(1.11), .Tnom(26.85), .Area(1.0)) btgn4(net_220_230, net_250_200, net_250_260, net_250_200);
_BJT #(.Type(npn), .Is(1e-15), .Nf(1), .Nr(1), .Ikf(0.01), .Ikr(0.10), .Vaf(100), .Var(10), .Ise(0), .Ne(2.0), .Isc(0), .Nc(2.0), .Bf(300), .Br(5.67), .Rbm(0), .Irb(0), .Rc(0), .Re(0), .Rb(0), .Cje(0), .Vje(0.75), .Mje(0.33), .Cjc(0), .Vjc(0.75), .Mjc(0.33), .Xcjc(1.0), .Cjs(0), .Vjs(0.75), .Mjs(0), .Fc(0.5), .Tf(0.0), .Xtf(0.0), .Vtf(0.0), .Itf(0.0), .Tr(0.0), .Temp(26.85), .Kf(0.0), .Af(1.0), .Ffe(1.0), .Kb(0.0), .Ab(1.0), .Fb(1.0), .Ptf(0.0), .Xtb(0.0), .Xti(3.0), .Eg(1.11), .Tnom(26.85), .Area(1.0)) btgn3(net_280_130, net_250_100, net_250_160, net_250_100);
GND #() anonymous_gnd_hack_0(net_130_370);
R #(.R(200), .Temp(26.85), .Tc1(0.0), .Tc2(0.0), .Tnom(26.85), .Symbol(european)) RF2(net_300_410, net_240_410);
Eqn #(.Gain(abs(Out.v/In.v)), .Export(yes)) Eqn1();
GND #() anonymous_gnd_hack_1(net_40_120);
Vdc #(.U(6 V)) VCC(net_40_60, net_40_120);
GND #() anonymous_gnd_hack_2(net_-50_320);
Vac #(.U(50u), .f(1 GHz), .Phase(0), .Theta(0)) V1(net_-50_260, net_-50_320);
R #(.R(140), .Temp(26.85), .Tc1(0.0), .Tc2(0.0), .Tnom(26.85), .Symbol(european)) R3(net_350_270, net_350_210);
_BJT #(.Type(npn), .Is(1e-15), .Nf(1), .Nr(1), .Ikf(0.01), .Ikr(0.10), .Vaf(100), .Var(10), .Ise(0), .Ne(2.0), .Isc(0), .Nc(2.0), .Bf(300), .Br(5.67), .Rbm(0), .Irb(0), .Rc(0), .Re(0), .Rb(0), .Cje(0), .Vje(0.75), .Mje(0.33), .Cjc(0), .Vjc(0.75), .Mjc(0.33), .Xcjc(1.0), .Cjs(0), .Vjs(0.75), .Mjs(0), .Fc(0.5), .Tf(0.0), .Xtf(0.0), .Vtf(0.0), .Itf(0.0), .Tr(0.0), .Temp(26.85), .Kf(0.0), .Af(1.0), .Ffe(1.0), .Kb(0.0), .Ab(1.0), .Fb(1.0), .Ptf(0.0), .Xtb(0.0), .Xti(3.0), .Eg(1.11), .Tnom(26.85), .Area(1.0)) btgn6(net_320_170, net_350_140, net_350_200, net_350_140);
R #(.R(12), .Temp(26.85), .Tc1(0.0), .Tc2(0.0), .Tnom(26.85), .Symbol(european)) RE2(net_440_340, net_440_280);
_BJT #(.Type(npn), .Is(1e-15), .Nf(1), .Nr(1), .Ikf(0.01), .Ikr(0.10), .Vaf(100), .Var(10), .Ise(0), .Ne(2.0), .Isc(0), .Nc(2.0), .Bf(300), .Br(5.67), .Rbm(0), .Irb(0), .Rc(0), .Re(0), .Rb(0), .Cje(0), .Vje(0.75), .Mje(0.33), .Cjc(0), .Vjc(0.75), .Mjc(0.33), .Xcjc(1.0), .Cjs(0), .Vjs(0.75), .Mjs(0), .Fc(0.5), .Tf(0.0), .Xtf(0.0), .Vtf(0.0), .Itf(0.0), .Tr(0.0), .Temp(26.85), .Kf(0.0), .Af(1.0), .Ffe(1.0), .Kb(0.0), .Ab(1.0), .Fb(1.0), .Ptf(0.0), .Xtb(0.0), .Xti(3.0), .Eg(1.11), .Tnom(26.85), .Area(1.0)) btgn5(net_410_390, net_440_360, net_440_420, net_440_360);
_BJT #(.Type(npn), .Is(1e-15), .Nf(1), .Nr(1), .Ikf(0.01), .Ikr(0.10), .Vaf(100), .Var(10), .Ise(0), .Ne(2.0), .Isc(0), .Nc(2.0), .Bf(300), .Br(5.67), .Rbm(0), .Irb(0), .Rc(0), .Re(0), .Rb(0), .Cje(0), .Vje(0.75), .Mje(0.33), .Cjc(0), .Vjc(0.75), .Mjc(0.33), .Xcjc(1.0), .Cjs(0), .Vjs(0.75), .Mjs(0), .Fc(0.5), .Tf(0.0), .Xtf(0.0), .Vtf(0.0), .Itf(0.0), .Tr(0.0), .Temp(26.85), .Kf(0.0), .Af(1.0), .Ffe(1.0), .Kb(0.0), .Ab(1.0), .Fb(1.0), .Ptf(0.0), .Xtb(0.0), .Xti(3.0), .Eg(1.11), .Tnom(26.85), .Area(1.0)) btgn2(net_410_200, net_440_170, net_440_230, net_440_170);
R #(.R(225), .Temp(26.85), .Tc1(0.0), .Tc2(0.0), .Tnom(26.85), .Symbol(european)) R2(net_440_110, net_440_50);
GND #() anonymous_gnd_hack_3(net_440_420);
R #(.R(10), .Temp(26.85), .Tc1(0.0), .Tc2(0.0), .Tnom(26.85), .Symbol(european)) R0(net_530_130, net_470_130);
L #(.L(3 nH), .I()) L2(net_530_130, net_590_130);
GND #() anonymous_gnd_hack_4(net_650_250);
R #(.R(1k), .Temp(26.85), .Tc1(0.0), .Tc2(0.0), .Tnom(26.85), .Symbol(european)) RL(net_650_250, net_650_190);
wire #() noname(net_130_250, net_130_280);
wire #() noname(net_200_190, net_250_190);
wire #() noname(net_80_220, net_100_220);
wire #() noname(net_130_150, net_130_170);
wire #() noname(net_130_280, net_130_310);
wire #() noname(net_130_280, net_160_280);
wire #() noname(net_200_230, net_220_230);
wire #() noname(net_200_190, net_200_230);
wire #() noname(net_250_190, net_250_200);
wire #() noname(net_250_260, net_250_280);
wire #() noname(net_220_280, net_250_280);
wire #() noname(net_250_160, net_250_190);
wire #() noname(net_80_410, net_240_410);
wire #() noname(net_80_220, net_80_410);
wire #() noname(net_250_40, net_250_100);
wire #() noname(net_130_40, net_130_90);
wire #() noname(net_130_40, net_250_40);
wire #() noname(net_40_40, net_130_40);
wire #() noname(net_40_40, net_40_60);
wire #() noname(net_-50_220, net_-40_220);
wire #() noname(net_-50_220, net_-50_260);
wire #() noname(net_350_130, net_350_140);
wire #() noname(net_350_130, net_440_130);
wire #() noname(net_350_200, net_350_210);
wire #() noname(net_390_390, net_410_390);
wire #() noname(net_440_340, net_440_350);
wire #() noname(net_390_350, net_440_350);
wire #() noname(net_390_350, net_390_390);
wire #() noname(net_440_270, net_440_280);
wire #() noname(net_350_270, net_440_270);
wire #() noname(net_440_130, net_440_170);
wire #() noname(net_440_230, net_440_270);
wire #() noname(net_350_200, net_410_200);
wire #() noname(net_440_350, net_440_360);
wire #() noname(net_440_110, net_440_130);
wire #() noname(net_350_270, net_350_410);
wire #() noname(net_440_40, net_440_50);
wire #() noname(net_250_40, net_440_40);
wire #() noname(net_300_410, net_350_410);
wire #() noname(net_280_130, net_350_130);
wire #() noname(net_130_170, net_130_190);
wire #() noname(net_130_170, net_320_170);
wire #() noname(net_440_130, net_470_130);
wire #() noname(net_650_130, net_650_190);
wire #() noname(net_590_130, net_590_130);
wire #() noname(net_-50_220, net_-50_220);
place #(.$xposition(-50),.$yposition(220)) place_-50_220(net_-50_220);
place #(.$xposition(-50),.$yposition(260)) place_-50_260(net_-50_260);
place #(.$xposition(-50),.$yposition(320)) place_-50_320(net_-50_320);
place #(.$xposition(-40),.$yposition(220)) place_-40_220(net_-40_220);
place #(.$xposition(20),.$yposition(220)) place_20_220(net_20_220);
place #(.$xposition(40),.$yposition(40)) place_40_40(net_40_40);
place #(.$xposition(40),.$yposition(60)) place_40_60(net_40_60);
place #(.$xposition(40),.$yposition(120)) place_40_120(net_40_120);
place #(.$xposition(80),.$yposition(220)) place_80_220(net_80_220);
place #(.$xposition(80),.$yposition(410)) place_80_410(net_80_410);
place #(.$xposition(100),.$yposition(220)) place_100_220(net_100_220);
place #(.$xposition(130),.$yposition(40)) place_130_40(net_130_40);
place #(.$xposition(130),.$yposition(90)) place_130_90(net_130_90);
place #(.$xposition(130),.$yposition(150)) place_130_150(net_130_150);
place #(.$xposition(130),.$yposition(170)) place_130_170(net_130_170);
place #(.$xposition(130),.$yposition(190)) place_130_190(net_130_190);
place #(.$xposition(130),.$yposition(250)) place_130_250(net_130_250);
place #(.$xposition(130),.$yposition(280)) place_130_280(net_130_280);
place #(.$xposition(130),.$yposition(310)) place_130_310(net_130_310);
place #(.$xposition(130),.$yposition(370)) place_130_370(net_130_370);
place #(.$xposition(160),.$yposition(280)) place_160_280(net_160_280);
place #(.$xposition(200),.$yposition(190)) place_200_190(net_200_190);
place #(.$xposition(200),.$yposition(230)) place_200_230(net_200_230);
place #(.$xposition(220),.$yposition(230)) place_220_230(net_220_230);
place #(.$xposition(220),.$yposition(280)) place_220_280(net_220_280);
place #(.$xposition(240),.$yposition(410)) place_240_410(net_240_410);
place #(.$xposition(250),.$yposition(40)) place_250_40(net_250_40);
place #(.$xposition(250),.$yposition(100)) place_250_100(net_250_100);
place #(.$xposition(250),.$yposition(160)) place_250_160(net_250_160);
place #(.$xposition(250),.$yposition(190)) place_250_190(net_250_190);
place #(.$xposition(250),.$yposition(200)) place_250_200(net_250_200);
place #(.$xposition(250),.$yposition(260)) place_250_260(net_250_260);
place #(.$xposition(250),.$yposition(280)) place_250_280(net_250_280);
place #(.$xposition(280),.$yposition(130)) place_280_130(net_280_130);
place #(.$xposition(300),.$yposition(410)) place_300_410(net_300_410);
place #(.$xposition(320),.$yposition(170)) place_320_170(net_320_170);
place #(.$xposition(350),.$yposition(130)) place_350_130(net_350_130);
place #(.$xposition(350),.$yposition(140)) place_350_140(net_350_140);
place #(.$xposition(350),.$yposition(200)) place_350_200(net_350_200);
place #(.$xposition(350),.$yposition(210)) place_350_210(net_350_210);
place #(.$xposition(350),.$yposition(270)) place_350_270(net_350_270);
place #(.$xposition(350),.$yposition(410)) place_350_410(net_350_410);
place #(.$xposition(390),.$yposition(350)) place_390_350(net_390_350);
place #(.$xposition(390),.$yposition(390)) place_390_390(net_390_390);
place #(.$xposition(410),.$yposition(200)) place_410_200(net_410_200);
place #(.$xposition(410),.$yposition(390)) place_410_390(net_410_390);
place #(.$xposition(440),.$yposition(40)) place_440_40(net_440_40);
place #(.$xposition(440),.$yposition(50)) place_440_50(net_440_50);
place #(.$xposition(440),.$yposition(110)) place_440_110(net_440_110);
place #(.$xposition(440),.$yposition(130)) place_440_130(net_440_130);
place #(.$xposition(440),.$yposition(170)) place_440_170(net_440_170);
place #(.$xposition(440),.$yposition(230)) place_440_230(net_440_230);
place #(.$xposition(440),.$yposition(270)) place_440_270(net_440_270);
place #(.$xposition(440),.$yposition(280)) place_440_280(net_440_280);
place #(.$xposition(440),.$yposition(340)) place_440_340(net_440_340);
place #(.$xposition(440),.$yposition(350)) place_440_350(net_440_350);
place #(.$xposition(440),.$yposition(360)) place_440_360(net_440_360);
place #(.$xposition(440),.$yposition(420)) place_440_420(net_440_420);
place #(.$xposition(470),.$yposition(130)) place_470_130(net_470_130);
place #(.$xposition(530),.$yposition(130)) place_530_130(net_530_130);
place #(.$xposition(590),.$yposition(130)) place_590_130(net_590_130);
place #(.$xposition(650),.$yposition(130)) place_650_130(net_650_130);
place #(.$xposition(650),.$yposition(190)) place_650_190(net_650_190);
place #(.$xposition(650),.$yposition(250)) place_650_250(net_650_250);