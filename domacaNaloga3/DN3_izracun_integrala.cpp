#define _USE_MATH_DEFINES

#include <iostream>
#include <cmath>

using namespace std;

double func;

double funkcija(double x) {
    // Funkcija vrne vrednost matematične funkcije za poljubno vrednost x.
    double arctan = 0;
    for (int i=0; i<=10000; i++) {
        double t1 = pow(-1, i) * (pow(x/2, 2 * i + 1));
        double t2 = t1 / (2 * i + 1);
        arctan += t2;
    }
    func = exp(3*x)*arctan;
    return func;
}

int main()
{
    int n;
    cout << "Vnesite zeljeno celo stevilo razdelkov: ";
    cin >> n;
    double a = 0;      // spodnja meja integrala
    double b = M_PI_4; // zgornja meja integrala
    double h = b / n;
    double integral = funkcija(a) + funkcija(b);


    for (int i = 1; i <= n-1; i++) {
        integral += 2*funkcija(h * i);
    }

    integral = integral * ((b - a) / (2 * n));
    cout << "Vrednost integrala: " << integral;
    
}


