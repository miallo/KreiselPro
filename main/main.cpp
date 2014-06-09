#include <iostream>
#include <cmath>
using namespace std;

double pendeldatenr[]={20.13, 20.25, 20.32};
double pendeldatenl[]={20.18, 20.18, 20.18};
double schwungradr=0.1225, mrad=0.08;
double mpr=0, mpl=0, sigmapr=0, sigmapl=0;
double Ischwungrad=0, mpges=0;

int main()
{

    cout << pendeldatenr[1] << endl;
    for (int i=0;i<3;i++){
	mpr+=pendeldatenr[i];
	mpl+=pendeldatenl[i];
    }
	mpr/=3;
	mpl/=3;
    for(int i=0;i<3;i++){
	sigmapr+=pow(mpr-pendeldatenr[i],2);
	sigmapl+=pow(mpl-pendeldatenl[i],2);
    }
    cout << mpr << "\t" << mpl<< endl;
    mpges=(mpr+mpl)/20.;
    cout << mpges << endl;
    sigmapr=sqrt(sigmapr);
    sigmapl=sqrt(sigmapl);
    Ischwungrad=(((mpges*mpges*9.81*mrad*schwungradr)/(4*M_PI*M_PI))-mrad*schwungradr*schwungradr);
    cout << sigmapr << "\t" << sigmapl << "\t" << Ischwungrad << endl;
    return 0;
}

