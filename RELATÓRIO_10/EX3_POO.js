class FichaDeCriatura {
    constructor(criatura, nivelDePerigo) {
        this.criatura = criatura;
        this.nivelDePerigo = nivelDePerigo;
    }

    descrever() {
        return `Criatura: ${this.criatura} | Perigo: ${this.nivelDePerigo}`;
    }
}

class DiarioMisterioso {
    #fichas = []; // Inicia vazio

    constructor(numero) {
        this.numero = numero;
    }

    anotar(criatura, nivelDePerigo) {
        const novaFicha = new FichaDeCriatura(criatura, nivelDePerigo);
        this.#fichas.push(novaFicha);
    }

    exibirFichas() {
        console.log(`\n--- Lendo o Diário nº ${this.numero} ---`);
        this.#fichas.forEach(f => {
            console.log(f.descrever());
        });
    }
}

class Funcionario {
    constructor(nome, cargo) {
        this.nome = nome;
        this.cargo = cargo;
    }
}

class CabanaDoMisterio {
    #funcionarios = []; 

    constructor(dono) {
        this.dono = dono;
    }

    contratar(funcionario) {
        this.#funcionarios.push(funcionario);
    }

    abrirAsPortas() {
        console.log(`\nCabana de ${this.dono} está ABERTA! Funcionários no turno:`);
        this.#funcionarios.forEach(f => {
            console.log(`- ${f.nome} (${f.cargo})`);
        });
    }
}

const diario3 = new DiarioMisterioso(3);
diario3.anotar('Gnomos', 'Baixo (mas perigosos em bando)');
diario3.anotar('Morcegos Vampiros Gigantes', 'Alto');
diario3.exibirFichas();

const dipper = new Funcionario('Dipper Pines', 'Atendente');
const wendy = new Funcionario('Wendy Corduroy', 'Caixa');

const cabana = new CabanaDoMisterio('Stan Pines');
cabana.contratar(dipper);
cabana.contratar(wendy);
cabana.abrirAsPortas();

/* 
 * - Composição no programa: Ocorre na classe DiarioMisterioso. O método anotar() 
 *   instancia (cria com o 'new') a FichaDeCriatura DENTRO da classe. A ficha só 
 *   existe enquanto parte do diário e morre/deixa de existir com ele.
 * 
 * - Agregação no programa: Ocorre na classe CabanaDoMisterio. Os objetos da classe 
 *   Funcionario (dipper e wendy) foram criados FORA da cabana, já existiam sozinhos 
 *   no Main, e foram apenas passados/adicionados depois pelo método contratar().
 */