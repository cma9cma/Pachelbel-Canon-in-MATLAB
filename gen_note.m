function y = gen_note(octave, tone, rhythm)
% Generate notes with different frequency (i.e. octave and tone) and rhythm
%
% parameter table:
% octave: from 1 to 5 are 5 consecutive octaves. octave = 3 represents the octave in
% which middle C is. octave = 6 represents the note makes no sound.
% tone: from 1 to 7 represents C to B, respectively.
% rhythm: represents the length of time interval in which this note is
% played
%
% the return value is the generated note y, which is a row vector with 
% Fs * rhythm elements in it.

% sample rate
Fs = 44100;

% the rows are noted by octave and columns by tone.
% the frequency of different notes in this matrix is consistent with twelve-tone equal temperament
freq = [130, 146, 164, 174, 196, 220, 247;
    261, 293, 329, 349, 392, 440, 494;
    523, 587, 659, 698, 784, 880, 988;
    1046, 1174, 1318, 1396, 1568, 1760, 1976;
    2092, 2348, 2636, 2792, 3136, 3520, 3952;
    0, 0, 0, 0, 0, 0, 0];

% floor: convert double to int to ensure the number of elements in x is an integer.
x = linspace(0, 2 * pi * rhythm, floor(Fs * rhythm));

% pay attention to the linear decay factor. It's used to make notes sound
% get weaker as it's played from beginning to end. This effect can make
% the interval between different notes more clear.
y = sin(freq(octave, tone) * x) .* (1 - x / (2 * rhythm * pi));

end

