reset
set terminal epslatex color
set output 'MessungPraezession.tex'
set xlabel 'Rezipoke Rotationsfrequenz $1/\omega_R$ [s]'
set ylabel 'Präzessionsfrequenz $\omega_P$ [Hz]'
f3(x)=a*x+b
f4(x)=c*x+d
f6(x)=e*x+f
set fit logfile 'messung30g.log'
fit f3(x) 'messung 30g.txt' u (1/(2*pi/($2))):(2*pi/($3)) via a,b
set fit logfile 'messung40g.log'
fit f4(x) 'messung 40g.txt' u (1/(2*pi/($2))):(2*pi/($3)) via c,d
set fit logfile 'messung60g.log'
fit f6(x) 'messung 60g.txt' u (1/(2*pi/($2))):(2*pi/($3)) via e,f

p 'messung 30g.txt' u (1/(2*pi/($2))):(2*pi/($3)), f3(x), 'messung 40g.txt' u (1/(2*pi/($2))):(2*pi/($3)), f4(x), 'messung 60g.txt' u (1/(2*pi/($2))):(2*pi/($3)), f6(x)
set output
!epstopdf MessungPraezession.tex
