#include <iostream>
#include <string>
using namespace std;

class MembroInatel {
protected:
    string nome; 

public:
    MembroInatel(string n) : nome(n) {}

    virtual void seApresentar() {
        cout << "Sou um membro da comunidade Inatel: " << nome << "." << endl;
    }

    virtual ~MembroInatel() {}
};

class Aluno : public MembroInatel {
protected:
    string curso; 

public:
    Aluno(string n, string c) : MembroInatel(n), curso(c) {}

    void seApresentar() override {
        cout << "Meu nome e " << nome << " e estudo no curso de " << curso << "." << endl;
    }
};

class Professor : public MembroInatel {
protected:
    string disciplina; 

public:
    Professor(string n, string d) : MembroInatel(n), disciplina(d) {}

    void seApresentar() override {
        cout << "Meu nome e " << nome << " e leciono a disciplina de " << disciplina << "." << endl;
    }
};

int main() {
    MembroInatel* aluno = new Aluno("Joao", "Engenharia de Software");
    MembroInatel* professor = new Professor("Carlos", "Algoritmos");

    cout << "=== Apresentacoes INATEL ===" << endl;
    
    aluno->seApresentar();
    professor->seApresentar();

    delete aluno;
    delete professor;

    return 0;
}