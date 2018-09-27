~freq = [461,492,909,576,809,972,691,1461,1033,922,557]*0.5
~black = [1.1,0.8,0.6,1.5,2.3,2.8,0.9,20.5,2.2,0.3,0.1]*2
~green = [1,0.5,0.8,1.2,1.6,3.2,0.7,21,1.3,0.3,0.2]*2
~blue = [0.8,0.4,1.4,0.65,0.9,2,0.3,15,1.1,0.3,0.2]*2
~red = [0.2,0,0.9,0.25,0.5,2.5,0.3,20,0,0.2,0.2]*2



(
SynthDef("helix_nebula", { arg f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11, a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11, out = 0;
	var oscs;
	oscs  = [
		[SinOsc.ar(f1, 0, a1)],
		[SinOsc.ar(f2, 0, a2)],
		[SinOsc.ar(f3, 0, a3)],
		[SinOsc.ar(f4, 0, a4)],
		[SinOsc.ar(f5, 0, a5)],
		[SinOsc.ar(f6, 0, a6)],
		[SinOsc.ar(f7, 0, a7)],
		[SinOsc.ar(f8, 0, a8)],
		[SinOsc.ar(f9, 0, a9)],
		[SinOsc.ar(f10, 0, a10)],
		[SinOsc.ar(f11, 0, a11)]
	];
	Out.ar(out,Mix(oscs));
}).add;
)

(
Routine{
	x = Synth("helix_nebula", ['f1',~freq.at(0),'f2',~freq.at(1),'f3',~freq.at(2),'f4',~freq.at(3),'f5',~freq.at(4),'f6',~freq.at(5),'7',~freq.at(6),'8',~freq.at(7),'9',~freq.at(8),'f10',~freq.at(9),'f11',~freq.at(10),'a1',~black.at(0),'a2',~black.at(1),'a3',~black.at(2),'a4',~black.at(3),'a5',~black.at(4),'a6',~black.at(5),'a7',~black.at(6),'a8',~black.at(7),'a9',~black.at(8),'a10',~black.at(9),'a11',~black.at(10)]);

	2.wait;
	y = Synth("helix_nebula", ['f1',~freq.at(0),'f2',~freq.at(1),'f3',~freq.at(2),'f4',~freq.at(3),'f5',~freq.at(4),'f6',~freq.at(5),'7',~freq.at(6),'8',~freq.at(7),'9',~freq.at(8),'f10',~freq.at(9),'f11',~freq.at(10),'a1',~green.at(0),'a2',~green.at(1),'a3',~green.at(2),'a4',~green.at(3),'a5',~green.at(4),'a6',~green.at(5),'a7',~green.at(6),'a8',~green.at(7),'a9',~green.at(8),'a10',~green.at(9),'a11',~green.at(10)]);
	2.wait;
	x.free;
	z = Synth("helix_nebula", ['f1',~freq.at(0),'f2',~freq.at(1),'f3',~freq.at(2),'f4',~freq.at(3),'f5',~freq.at(4),'f6',~freq.at(5),'7',~freq.at(6),'8',~freq.at(7),'9',~freq.at(8),'f10',~freq.at(9),'f11',~freq.at(10),'a1',~blue.at(0),'a2',~blue.at(1),'a3',~blue.at(2),'a4',~blue.at(3),'a5',~blue.at(4),'a6',~blue.at(5),'a7',~blue.at(6),'a8',~blue.at(7),'a9',~blue.at(8),'a10',~blue.at(9),'a11',~blue.at(10)]);
	2.wait;
	w = Synth("helix_nebula", ['f1',~freq.at(0),'f2',~freq.at(1),'f3',~freq.at(2),'f4',~freq.at(3),'f5',~freq.at(4),'f6',~freq.at(5),'7',~freq.at(6),'8',~freq.at(7),'9',~freq.at(8),'f10',~freq.at(9),'f11',~freq.at(10),'a1',~red.at(0),'a2',~red.at(1),'a3',~red.at(2),'a4',~red.at(3),'a5',~red.at(4),'a6',~red.at(5),'a7',~red.at(6),'a8',~black.at(7),'a9',~red.at(8),'a10',~red.at(9),'a11',~red.at(10)]);
	2.wait;
	y.free;
	2.wait;
	z.free;
	2.wait;
	w.free;
}.play;
)






f = {arg freqs = [440,440]; freqs.at(0) + freqs.at(1)};
f.value([3,4])
(
{
    var a, b;
	a = [SinOsc.ar(440, 0, 0.2)];//, Saw.ar(662, 0.2)];
b = [SinOsc.ar(880, 0, 0.2)];//, Saw.ar(660, 0.2)];
    Mix([a, b]).postln;
}.play;
)

{SinOsc.ar(440, 0, 0.01)}.play;