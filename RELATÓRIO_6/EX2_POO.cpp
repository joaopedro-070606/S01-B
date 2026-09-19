#include <iostream>
#include <string>
using namespace std;

class LinkSocial {
private:
    string nome;
    string arcana;
    int rank;

public:
    void setNome(string n) { nome = n; }
    void setArcana(string a) { arcana = a; }
    void setRank(int r) { rank = r; }

    string getNome() { return nome; }
    string getArcana() { return arcana; }
    int getRank() { return rank; }

    void subirRank() {
        rank += 1; 
    }
};

int main() {
    LinkSocial* aliado = new LinkSocial();

    aliado->setNome("Ryuji");
    aliado->setArcana("Chariot");
    aliado->setRank(1);

    aliado->subirRank();

    cout << "Nome: " << aliado->getNome() << endl;
    cout << "Arcana: " << aliado->getArcana() << endl;
    cout << "Rank Atual: " << aliado->getRank() << endl;

    delete aliado;

    return 0;
}