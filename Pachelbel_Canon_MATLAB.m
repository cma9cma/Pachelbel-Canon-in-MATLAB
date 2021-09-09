% Pachebel's Canon played by Matlab
% Source Code by cma9cma

% sample rate
Fs = 44100;

disp('Please listen to Pachebel’s Canon played by Matlab!');

% generate all notes from 1/16 to 1/1 and from octave 1 to 5
% and null notes, i.e. notes with no sound
% 1/16 notes, noted by x
x11 = gen_note(1, 1, 0.18293);
x12 = gen_note(1, 2, 0.18293);
x13 = gen_note(1, 3, 0.18293);
x14 = gen_note(1, 4, 0.18293);
x15 = gen_note(1, 5, 0.18293);
x16 = gen_note(1, 6, 0.18293);
x17 = gen_note(1, 7, 0.18293);
x21 = gen_note(2, 1, 0.18293);
x22 = gen_note(2, 2, 0.18293);
x23 = gen_note(2, 3, 0.18293);
x24 = gen_note(2, 4, 0.18293);
x25 = gen_note(2, 5, 0.18293);
x26 = gen_note(2, 6, 0.18293);
x27 = gen_note(2, 7, 0.18293);
x31 = gen_note(3, 1, 0.18293);
x32 = gen_note(3, 2, 0.18293);
x33 = gen_note(3, 3, 0.18293);
x34 = gen_note(3, 4, 0.18293);
x35 = gen_note(3, 5, 0.18293);
x36 = gen_note(3, 6, 0.18293);
x37 = gen_note(3, 7, 0.18293);
x41 = gen_note(4, 1, 0.18293);
x42 = gen_note(4, 2, 0.18293);
x43 = gen_note(4, 3, 0.18293);
x44 = gen_note(4, 4, 0.18293);
x45 = gen_note(4, 5, 0.18293);
x46 = gen_note(4, 6, 0.18293);
x47 = gen_note(4, 7, 0.18293);
x51 = gen_note(5, 1, 0.18293);
x52 = gen_note(5, 2, 0.18293);
x53 = gen_note(5, 3, 0.18293);
x54 = gen_note(5, 4, 0.18293);
x55 = gen_note(5, 5, 0.18293);
x56 = gen_note(5, 6, 0.18293);
x57 = gen_note(5, 7, 0.18293);
xnn = gen_note(6, 1, 0.18293);

% 1/8 notes, noted by y
y11 = gen_note(1, 1, 0.36585);
y12 = gen_note(1, 2, 0.36585);
y13 = gen_note(1, 3, 0.36585);
y14 = gen_note(1, 4, 0.36585);
y15 = gen_note(1, 5, 0.36585);
y16 = gen_note(1, 6, 0.36585);
y17 = gen_note(1, 7, 0.36585);
y21 = gen_note(2, 1, 0.36585);
y22 = gen_note(2, 2, 0.36585);
y23 = gen_note(2, 3, 0.36585);
y24 = gen_note(2, 4, 0.36585);
y25 = gen_note(2, 5, 0.36585);
y26 = gen_note(2, 6, 0.36585);
y27 = gen_note(2, 7, 0.36585);
y31 = gen_note(3, 1, 0.36585);
y32 = gen_note(3, 2, 0.36585);
y33 = gen_note(3, 3, 0.36585);
y34 = gen_note(3, 4, 0.36585);
y35 = gen_note(3, 5, 0.36585);
y36 = gen_note(3, 6, 0.36585);
y37 = gen_note(3, 7, 0.36585);
y41 = gen_note(4, 1, 0.36585);
y42 = gen_note(4, 2, 0.36585);
y43 = gen_note(4, 3, 0.36585);
y44 = gen_note(4, 4, 0.36585);
y45 = gen_note(4, 5, 0.36585);
y46 = gen_note(4, 6, 0.36585);
y47 = gen_note(4, 7, 0.36585);
y51 = gen_note(5, 1, 0.36585);
y52 = gen_note(5, 2, 0.36585);
y53 = gen_note(5, 3, 0.36585);
y54 = gen_note(5, 4, 0.36585);
y55 = gen_note(5, 5, 0.36585);
y56 = gen_note(5, 6, 0.36585);
y57 = gen_note(5, 7, 0.36585);
ynn = gen_note(6, 1, 0.36585);

% 1/4 notes, noted by z
z11 = gen_note(1, 1, 0.73171);
z12 = gen_note(1, 2, 0.73171);
z13 = gen_note(1, 3, 0.73171);
z14 = gen_note(1, 4, 0.73171);
z15 = gen_note(1, 5, 0.73171);
z16 = gen_note(1, 6, 0.73171);
z17 = gen_note(1, 7, 0.73171);
z21 = gen_note(2, 1, 0.73171);
z22 = gen_note(2, 2, 0.73171);
z23 = gen_note(2, 3, 0.73171);
z24 = gen_note(2, 4, 0.73171);
z25 = gen_note(2, 5, 0.73171);
z26 = gen_note(2, 6, 0.73171);
z27 = gen_note(2, 7, 0.73171);
z31 = gen_note(3, 1, 0.73171);
z32 = gen_note(3, 2, 0.73171);
z33 = gen_note(3, 3, 0.73171);
z34 = gen_note(3, 4, 0.73171);
z35 = gen_note(3, 5, 0.73171);
z36 = gen_note(3, 6, 0.73171);
z37 = gen_note(3, 7, 0.73171);
z41 = gen_note(4, 1, 0.73171);
z42 = gen_note(4, 2, 0.73171);
z43 = gen_note(4, 3, 0.73171);
z44 = gen_note(4, 4, 0.73171);
z45 = gen_note(4, 5, 0.73171);
z46 = gen_note(4, 6, 0.73171);
z47 = gen_note(4, 7, 0.73171);
z51 = gen_note(5, 1, 0.73171);
z52 = gen_note(5, 2, 0.73171);
z53 = gen_note(5, 3, 0.73171);
z54 = gen_note(5, 4, 0.73171);
z55 = gen_note(5, 5, 0.73171);
z56 = gen_note(5, 6, 0.73171);
z57 = gen_note(5, 7, 0.73171);
znn = gen_note(6, 1, 0.73171);

% 1/2 notes, noted by w
w11 = gen_note(1, 1, 1.46341);
w12 = gen_note(1, 2, 1.46341);
w13 = gen_note(1, 3, 1.46341);
w14 = gen_note(1, 4, 1.46341);
w15 = gen_note(1, 5, 1.46341);
w16 = gen_note(1, 6, 1.46341);
w17 = gen_note(1, 7, 1.46341);
w21 = gen_note(2, 1, 1.46341);
w22 = gen_note(2, 2, 1.46341);
w23 = gen_note(2, 3, 1.46341);
w24 = gen_note(2, 4, 1.46341);
w25 = gen_note(2, 5, 1.46341);
w26 = gen_note(2, 6, 1.46341);
w27 = gen_note(2, 7, 1.46341);
w31 = gen_note(3, 1, 1.46341);
w32 = gen_note(3, 2, 1.46341);
w33 = gen_note(3, 3, 1.46341);
w34 = gen_note(3, 4, 1.46341);
w35 = gen_note(3, 5, 1.46341);
w36 = gen_note(3, 6, 1.46341);
w37 = gen_note(3, 7, 1.46341);
w41 = gen_note(4, 1, 1.46341);
w42 = gen_note(4, 2, 1.46341);
w43 = gen_note(4, 3, 1.46341);
w44 = gen_note(4, 4, 1.46341);
w45 = gen_note(4, 5, 1.46341);
w46 = gen_note(4, 6, 1.46341);
w47 = gen_note(4, 7, 1.46341);
w51 = gen_note(5, 1, 1.46341);
w52 = gen_note(5, 2, 1.46341);
w53 = gen_note(5, 3, 1.46341);
w54 = gen_note(5, 4, 1.46341);
w55 = gen_note(5, 5, 1.46341);
w56 = gen_note(5, 6, 1.46341);
w57 = gen_note(5, 7, 1.46341);
wnn = gen_note(6, 1, 1.46341);

% 1/1 notes, noted by p
p11 = gen_note(1, 1, 2.92682);
p12 = gen_note(1, 2, 2.92682);
p13 = gen_note(1, 3, 2.92682);
p14 = gen_note(1, 4, 2.92682);
p15 = gen_note(1, 5, 2.92682);
p16 = gen_note(1, 6, 2.92682);
p17 = gen_note(1, 7, 2.92682);
p21 = gen_note(2, 1, 2.92682);
p22 = gen_note(2, 2, 2.92682);
p23 = gen_note(2, 3, 2.92682);
p24 = gen_note(2, 4, 2.92682);
p25 = gen_note(2, 5, 2.92682);
p26 = gen_note(2, 6, 2.92682);
p27 = gen_note(2, 7, 2.92682);
p31 = gen_note(3, 1, 2.92682);
p32 = gen_note(3, 2, 2.92682);
p33 = gen_note(3, 3, 2.92682);
p34 = gen_note(3, 4, 2.92682);
p35 = gen_note(3, 5, 2.92682);
p36 = gen_note(3, 6, 2.92682);
p37 = gen_note(3, 7, 2.92682);
p41 = gen_note(4, 1, 2.92682);
p42 = gen_note(4, 2, 2.92682);
p43 = gen_note(4, 3, 2.92682);
p44 = gen_note(4, 4, 2.92682);
p45 = gen_note(4, 5, 2.92682);
p46 = gen_note(4, 6, 2.92682);
p47 = gen_note(4, 7, 2.92682);
p51 = gen_note(5, 1, 2.92682);
p52 = gen_note(5, 2, 2.92682);
p53 = gen_note(5, 3, 2.92682);
p54 = gen_note(5, 4, 2.92682);
p55 = gen_note(5, 5, 2.92682);
p56 = gen_note(5, 6, 2.92682);
p57 = gen_note(5, 7, 2.92682);
pnn = gen_note(6, 1, 2.92682);

% size of each note
msize_x = size(xnn);
msize_y = size(ynn);
msize_z = size(znn);
msize_w = size(wnn);
msize_p = size(pnn);
size_x = msize_x(2);
size_y = msize_y(2);
size_z = msize_z(2);
size_w = msize_w(2);
size_p = msize_p(2);

% zero vector to compensate matrix size to ensure possible addition is valid
z_com_w = zeros(1, size_w - size_z);

% separate melody
% section 1 to 4
right_part_sec1to4 = [w33, w32, w31, w27, w26, w25, w26, w27];
leftt_part_sec1to4 = [w21, w15, w16, w13, w14, w15, w14, w15];

% section 5 to 8
right_part_sec5to8_1 = [z43, z_com_w, z42, z_com_w, z41, z_com_w, z37, z_com_w, z36, z_com_w, z35, z_com_w, z36, z_com_w, z37, z_com_w];
right_part_sec5to8_2 = [w35, w35, w33, w33, w31, w31, w31, w32];
leftt_part_sec5to8 =   [w21, w15, w16, w13, w14, w21, w14, w15];

% section 9 to 12
right_part_sec9to12_1 = [z43, z_com_w, z42, znn, wnn, znn, znn, wnn, znn, znn, z36, z_com_w, z35, znn];
right_part_sec9to12_2 = [w35, z35, z34, w41, z37, z35, w36, z35, z33, w34, z32, z34];
leftt_part_sec9to12 =   [y21, y25, y31, y33, y17, y22, y25, y27, y16, y23, y26, y31, y13, y23, y25, y27, y14, y21, y24, y26, y21, y23, y25, y31, y14, y21, y24, y26, y15, y22, y25, y27];

% section 13 to 16
right_part_sec13to16 = [y41, y37, y41, y33, z35, z37, z41, z43, y45, y43, y45, y46, y44, y43, y42, y44, y43, y42, y41, y37, y36, y34, z41, y37, y35, y41, y37];
leftt_part_sec13to16 = [y21, y23, y25, y31, y15, y22, y25, y27, y16, y23, y26, y31, y13, y23, y25, y27, y14, y21, y24, y26, y21, y23, y25, y31, y14, y21, y24, y26, y15, y22, y25, y27];

% section 17 to 20
right_part_sec17to20 = [y41, y37, y41, y33, z35, z37, z41, z43, y45, y43, y45, y46, y44, y43, y42, y44, y43, y42, y41, y37, y36, y35, z34, y41, xnn, x35, y37, x42, x35];
leftt_part_sec17to20 = [y21, y23, y25, y31, y15, y22, y25, y27, y16, y23, y26, y31, y13, y23, y25, y27, y14, y21, y24, y26, y21, y23, y25, y31, y14, y21, y24, y26, y15, y22, y25, y27];

% section 21 to 24
right_part_sec21to24_1 = [ynn, xnn, xnn, xnn, xnn, xnn, xnn, ynn, xnn, xnn, xnn, xnn, xnn, xnn, ynn, xnn, xnn, ynn, xnn, xnn, ynn, xnn, xnn, ynn, ynn, znn, ynn, ynn, znn, ynn, ynn, z36, xnn, xnn, ynn, ynn, xnn, xnn, xnn, xnn, xnn, xnn];
right_part_sec21to24_2 = [y43, xnn, x35, x43, x42, x41, x42, y42, xnn, x43, x44, x43, x42, x43, y41, xnn, x41, y41, x37, x41, y37, x35, x33, y33, y35, z36, y37, y41, z35, y33, y35, z34, x34, x36, y41, y41, xnn, x37, x37, x41, x42, x35];
leftt_part_sec21to24 =   [y21, y23, y25, y31, y17, y22, y25, y27, y16, y23, y26, y31, y13, y23, y25, y27, y14, y21, y24, y26, y21, y23, y25, y31, y14, y21, y24, y26, y15, y22, y25, y27];

% section 25 to 28
right_part_sec25to28_1 = [ynn, xnn, xnn, xnn, xnn, xnn, xnn, ynn, xnn, xnn, xnn, xnn, xnn, xnn, ynn, xnn, xnn, ynn, xnn, xnn, ynn, xnn, xnn, ynn, ynn, znn, ynn, ynn, znn, ynn, ynn, z36, xnn, xnn, ynn, ynn, xnn, xnn, xnn, xnn, xnn, xnn];
right_part_sec25to28_2 = [y43, xnn, x35, x43, x42, x41, x42, y42, xnn, x43, x44, x43, x42, x43, y41, xnn, x41, y41, x37, x41, y37, x35, x33, y33, y35, z36, y37, y41, z35, y33, y35, z34, x34, x36, y41, y41, xnn, x37, x37, x41, x42, x35];
leftt_part_sec25to28 =   [y21, y23, y25, y31, y15, y22, y25, y27, y16, y23, y26, y31, y13, y23, y25, y27, y14, y21, y24, y26, y21, y23, y25, y31, y14, y21, y24, y26, y15, y22, y25, y27];

% section 29 to 32
right_part_sec29to32 = [y45, x43, x44, y45, x43, x44, x45, x37, x36, x37, x41, x42, x43, x44, y43, x41, x42, y43, x33, x34, x35, x36, x35, x34, x35, x41, x37, x41, y36, x41, x37, y36, x35, x34, x35, x34, x33, x34, x35, x36, x37, x41, y36, x41, x37, y41, x37, x41, x37, x36, x37, x41, x42, x43, x44, x45];
leftt_part_sec29to32 = [y21, y25, y31, ynn, y15, y22, y27, ynn, y16, y23, y31, ynn, y13, y23, y25, ynn, y14, y21, y26, ynn, y21, y25, y31, ynn, y14, y21, y26, ynn, y15, y22, y27, ynn];

% section 33 to 36
right_part_sec33to36 = [y45, x43, x44, y45, x43, x44, x45, x37, x36, x37, x41, x42, x43, x44, y43, x41, x42, y43, x33, x34, x35, x36, x35, x34, x35, x41, x37, x41, y36, x41, x37, y36, x35, x34, x35, x34, x33, x34, x35, x36, x37, x41, y36, x41, x37, y41, x37, x41, x37, x36, x37, x41, x42, x43, x44, x45];
leftt_part_sec33to36 = [y21, y25, y31, ynn, y15, y22, y27, ynn, y16, y23, y31, ynn, y13, y23, y25, ynn, y14, y21, y26, ynn, y21, y25, y31, ynn, y14, y21, y26, ynn, y15, y22, y27, ynn];

% section 37 to 40
right_part_sec37to40 = [y43, x41, x42, y43, x42, x41, x42, x37, x41, x42, x43, x42, x41, x37, y41, x36, x37, y41, x31, x32, x33, x34, x33, x32, x33, x41, x37, x41, y36, x41, x37, y36, x35, x34, x35, x34, x33, x34, x35, x36, x37, x41, y36, x41, x37, y41, x37, x36, x37, x41, x42, x41, x37, x41, x36, x37];
leftt_part_sec37to40 = [y21, y25, y31, ynn, y15, y22, y27, ynn, y16, y23, y31, ynn, y13, y23, y25, ynn, y14, y21, y26, ynn, y21, y25, y31, ynn, y14, y21, y26, ynn, y15, y22, y27, ynn];

% section 41 to 44
right_part_sec41to44 = [p41, pnn, pnn, pnn];
leftt_part_sec41to44 = [y21, y25, y31, y33, y15, y22, y25, y27, y16, y23, y26, y31, y13, y23, y25, y27, y14, y21, y24, y26, y21, y25, y31, y33, y14, y21, y24, y26, y15, y22, y25, y27];

% section 45 to 48
right_part_sec45to48 = [ynn, x43, x44, y45, y43, ynn, x42, x43, y44, y42, ynn, x41, x42, y43, y41, ynn, x43, x42, y41, y37, ynn, x36, x37, y41, y36, ynn, x35, x36, y41, y35, ynn, x36, x37, y41, x37, x36, xnn, x35, x36, x37, y42, y37];
leftt_part_sec45to48 = [y21, y23, y25, y31, y15, y22, y25, y27, y16, y23, y26, y31, y13, y23, y25, y27, y14, y21, y24, y26, y21, y23, y25, y31, y14, y21, y24, y26, y15, y22, y25, y27];

% section 49 to 52
right_part_sec49to52 = [ynn, x43, x44, y45, y43, ynn, x42, x43, y44, y42, xnn, x36, x41, x42, y43, y41, ynn, x45, x44, y43, y45, y46, x46, x45, y44, y46, y45, x45, x44, y43, y45, x46, x45, x44, x46, x45, x44, x46, x45, x47, x46, y45, x37, x41, x42, x35];
leftt_part_sec49to52 = [y21, y23, y25, y31, y15, y22, y25, y27, y16, y23, y26, y31, y13, y23, y25, y27, y14, y21, y24, y26, y21, y23, y25, y31, y14, y21, y24, y26, y15, y22, y25, y27];

% section 53 to 56
right_part_sec53to56_1 = [y43, ynn, xnn, xnn, xnn, xnn, ynn, xnn, xnn, xnn, xnn, xnn, xnn, ynn, xnn, xnn, ynn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn];
right_part_sec53to56_2 = [y35, ynn, x43, x42, x41, x42, y42, xnn, x43, x43, x44, x42, x43, y42, xnn, x41, y41, x37, x41, x33, x35, x37, x41, x43, x45, x47, x51, x47, x46, x45, x44, x45, x44, x43, x42, x43, x42, x41, x37, x41, x37, x36, x35, x36, x35, x34, x35, x36, x34, x36, x41, x37, x36, x35, x41, x41, x35, x42, x35];
leftt_part_sec53to56   = [y21, y23, y25, y31, y15, y22, y25, y27, y16, y23, y26, y31, y13, y23, y25, y27, y14, y21, y24, y26, y21, y23, y25, y31, y14, y21, y24, y26, y15, y22, y25, y27];

% section 57 to 60
right_part_sec57to60_1 = [y43, ynn, ynn, ynn, ynn, ynn, ynn, ynn, y43, ynn, ynn, ynn, ynn, ynn, ynn, ynn, y41, ynn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, y36, ynn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn];
right_part_sec57to60_2 = [y41, ynn, y43, y44, y45, y46, y45, y44, y41, ynn, y41, y42, y43, y44, y43, y42, y34, ynn, x36, x37, x41, x41, x41, x41, xnn, x41, x41, x41, x37, x41, y34, ynn, x34, x36, x41, x42, x41, x37, xnn, x37, x37, x41, x42, x35];
leftt_part_sec57to60   = [y21, y23, y25, y31, y15, y22, y25, y27, y16, y23, y26, y31, y13, y23, y25, y27, y14, y21, y24, y26, y21, y23, y25, y31, y14, y21, y24, y26, y15, y22, y25, y27];

% section 61 to 64
right_part_sec61to64_1 = [y43, ynn, ynn, ynn, ynn, ynn, ynn, ynn, y43, ynn, ynn, ynn, ynn, ynn, ynn, ynn, y41, ynn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, y36, ynn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn, xnn];
right_part_sec61to64_2 = [y41, ynn, y43, y44, y45, y46, y45, y44, y41, ynn, y41, y42, y43, y44, y43, y42, y34, ynn, x36, x37, x41, x41, x41, x41, xnn, x41, x41, x41, x37, x41, y34, ynn, x34, x36, x41, x42, x41, x37, xnn, x37, x37, x41, x42, x35];
leftt_part_sec61to64   = [y21, y23, y25, y31, y15, y22, y25, y27, y16, y23, y26, y31, y13, y23, y25, y27, y14, y21, y24, y26, y21, y23, y25, y31, y14, y21, y24, y26, y15, y22, y25, y27];

% section 65 to 68
right_part_sec65to68 = [x43, x43, x43, x43, x43, x43, x43, x43, x42, x42, x42, x42, x42, x42, x42, x42, x41, x41, x41, x41, x41, x41, x41, x41, x37, x37, x37, x37, x37, x37, x37, x37, x36, x36, x36, x36, x36, x36, x36, x36, x35, x35, x35, x35, x35, x35, x35, x35, x36, x36, x36, x36, x36, x36, x36, x36, x37, x37, x37, x37, x37, x37, x37, x37];
leftt_part_sec65to68 = [y21, y25, y31, y33, y17, y22, y25, y27, y16, y23, y26, y31, y13, y23, y25, y27, y14, y21, y24, y26, y21, y23, y25, y31, y14, y21, y24, y26, y15, y22, y25, y27];

% section 69 to 72
right_part_sec69to72 = [x43, x43, x43, x43, x43, x43, x43, x43, x42, x42, x42, x42, x42, x42, x42, x42, x41, x41, x41, x41, x41, x41, x41, x41, x37, x37, x37, x37, x37, x37, x37, x37, x36, x36, x36, x36, x36, x36, x36, x36, x35, x35, x35, x35, x35, x35, x35, x35, x36, x36, x36, x36, x36, x36, x36, x36, x37, x37, x37, x37, x37, x37, x37, x37];
leftt_part_sec69to72 = [y21, y25, y31, y33, y17, y22, y25, y27, y16, y23, y26, y31, y13, y23, y25, y27, y14, y21, y24, y26, y21, y23, y25, y31, y14, y21, y24, y26, y15, y22, y25, y27];

% section 73
right_part_sec73_1 = [p41];
right_part_sec73_2 = [p33];
leftt_part_sec73_1 = [p25];
leftt_part_sec73_2 = [p21];

% compound melody
right_com = [right_part_sec1to4, right_part_sec5to8_1 + right_part_sec5to8_2, right_part_sec9to12_1 + right_part_sec9to12_2,...
            right_part_sec13to16, right_part_sec17to20, right_part_sec21to24_1 + right_part_sec21to24_2,...
            right_part_sec25to28_1 + right_part_sec25to28_2, right_part_sec29to32, right_part_sec33to36,...
            right_part_sec37to40, right_part_sec41to44, right_part_sec45to48, right_part_sec49to52, right_part_sec53to56_1 + right_part_sec53to56_2,...
            right_part_sec57to60_1 + right_part_sec57to60_2, right_part_sec61to64_1 + right_part_sec61to64_2, right_part_sec65to68, right_part_sec69to72,...
            right_part_sec73_1 + right_part_sec73_2];
leftt_com = [leftt_part_sec1to4, leftt_part_sec5to8, leftt_part_sec9to12, leftt_part_sec13to16, leftt_part_sec17to20, leftt_part_sec21to24,...
            leftt_part_sec25to28, leftt_part_sec29to32, leftt_part_sec33to36, leftt_part_sec37to40, leftt_part_sec41to44,...
            leftt_part_sec45to48, leftt_part_sec49to52, leftt_part_sec53to56, leftt_part_sec57to60, leftt_part_sec61to64, leftt_part_sec65to68,...
            leftt_part_sec69to72, leftt_part_sec73_1 + leftt_part_sec73_2];
msize_right_com = size(right_com);
msize_leftt_com = size(leftt_com);
size_diff = msize_leftt_com(2) - msize_right_com(2);

% equalize the vector size of leftt_com and right_com
% to make addition valid
if size_diff < 0
    leftt_com = [leftt_com, zeros(1, (-1) * size_diff)];
elseif size_diff > 0
    right_com = [right_com, zeros(1, size_diff)];
else
end

com = leftt_com + right_com;

% without this line of code, the sound will be of low quality
com = com / max(com);

% play the final composition
sound(com, Fs);