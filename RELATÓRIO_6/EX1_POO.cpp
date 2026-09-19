#include <iostream>
#include <string>
using namespace std;

class Banda {
public:
    string nome;
    int integrantes;
    float potenciaSom;
    int energia;

    Banda(string n, int i, float p, int e) : nome(n), integrantes(i), potenciaSom(p), energia(e) {}

    void duelar(Banda* rival) {
        cout << "A banda " << nome << " iniciou a apresentacao e duelou contra " << rival->nome << "!" << endl;
        rival->energia -= potenciaSom; 
    }
};

int main() {
    Banda* banda1 = new Banda("Rockers", 4, 30.5, 100);
    Banda* banda2 = new Banda("PopStars", 5, 25.0, 100);

    banda1->duelar(banda2);

    cout << "\n=== Status Apos o Duelo ===" << endl;
    cout << banda1->nome << " - Energia: " << banda1->energia << endl;
    cout << banda2->nome << " - Energia: " << banda2->energia << endl;

    delete banda1;
    delete banda2;

    return 0;
}