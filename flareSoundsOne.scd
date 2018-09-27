// Good flare
~lc_fle = "/Users/cbrasseur/Documents/FlareWork/data/flareFiles/galexLcs/6371232501812170296_LC.csv";

// Maybe flare
~lc_fle = "/Users/cbrasseur/Documents/FlareWork/data/flareFiles/galexLcs/2567018939755267955_LC.csv";

~lc = CSVFileReader.read(~lc_fle);
~lc.size;

(
SynthDef("basic_sine", { arg freq = 440, dur = 1, out = 0;
	Out.ar(out,SinGrain.ar(trigger: Impulse.kr(0), dur: dur, freq: freq, mul: 1, add: 0));
}).add;
)

Routine{
for(1,~lc.size,
	{arg i;
		~lc.at(i).at(2).postln;
		Synth("basic_sine", ["freq",~lc.at(i).at(2).asFloat*40]);
		0.15.wait;
	}
)
}.play;

