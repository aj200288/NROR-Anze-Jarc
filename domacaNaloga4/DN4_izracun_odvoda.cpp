#include <iostream>
#include <fstream>
#include <vector>

using namespace std;


int main() {
    ifstream indata;
    indata.open("poly.txt");
    int stevilo_vrednosti = 0;
    indata >> stevilo_vrednosti;

    vector<double> x;
    vector<double> f;

    for (int i = 0; i < stevilo_vrednosti; i++) {
        //iteriramo po vrsticah in shranjujemo vrednosti x in f(x) v vektroja
        double id, xi, fi;
        char dvopicje;

        indata >> id >> dvopicje >> xi >> fi;
        x.push_back(xi);
        f.push_back(fi);
    }
    indata.close();


    double dx = abs(x[1] - x[2]);
    double naprej;
    naprej = (-3*f[0] + 4*f[1] - f[2]) / (2*dx); //diferenčna shema naprej
    vector<double> odvodi;
    odvodi.push_back(naprej);

    for (int i = 1; i < stevilo_vrednosti-1; i++) {
        double centralna;
        centralna = (f[i+1] - f[i-1]) / (2*dx); //centralna diferenčna shema
        odvodi.push_back(centralna);
    }

    double nazaj;
    nazaj = (3*f[stevilo_vrednosti-1] - 4*f[stevilo_vrednosti-2] + f[stevilo_vrednosti-3]) / (2*dx); //diferenčna shema nazaj
    odvodi.push_back(nazaj);


    ofstream outdata("diff_poly.txt");

    for (double i : odvodi) {
        //iteriranje po vektorju rezultatov in shranjevanje v izhodno datoteko
        outdata << i << '\n';
    }
    outdata.close();


    return 0;
}