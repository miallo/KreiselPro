set terminal epslatex color
set output 'pendeldaten.eps'
set xrange [0:7]
set xlabel 'Messung'
set ylabel 'Trägheitsmoment [kg m$^2$]'
set key top right
set grid
f(x)=8.7e-3
p 'Pendel.dat' w e, f(x) title 'Mittelwert' lc 2 lt -1 
set output
!epstopdf pendeldaten.eps
