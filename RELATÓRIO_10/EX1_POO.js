class Pokemon {
    #vida;

    constructor(apelido, tipo, vidaInicial) {
        this.apelido = apelido;
        this.tipo = tipo;
        this.#vida = vidaInicial;
    }

    get vida() {
        return this.#vida;
    }

    sofrerDano(pontos) {
        this.#vida -= pontos;
        if (this.#vida < 0) {
            this.#vida = 0;
        }
        console.log(`${this.apelido} sofreu dano! Vida restante: ${this.#vida}`);
    }

    atacar(alvo) {
        console.log(`${this.apelido} realizou um ataque genérico em ${alvo.apelido}!`);
        alvo.sofrerDano(10);
    }
}

class Squirtle extends Pokemon {
    constructor(apelido, vidaInicial) {
        super(apelido, 'Água', vidaInicial);
    }

    atacar(alvo) {
        console.log(`${this.apelido} usou o Jato de Água em ${alvo.apelido}!`);
        alvo.sofrerDano(20);
    }
}

class Bulbasaur extends Pokemon {
    constructor(apelido, vidaInicial) {
        super(apelido, 'Planta', vidaInicial);
    }

    atacar(alvo) {
        console.log(`${this.apelido} usou o Chicote de Vinha em ${alvo.apelido}!`);
        alvo.sofrerDano(15);
    }
}

const meuSquirtle = new Squirtle('Zeca', 40);
const meuBulbasaur = new Bulbasaur('Buba', 30);

meuBulbasaur.atacar(meuSquirtle);
meuSquirtle.atacar(meuBulbasaur);
meuSquirtle.atacar(meuBulbasaur);

console.log(`\nFim da Batalha!`);
console.log(`Vida do ${meuSquirtle.apelido}: ${meuSquirtle.vida}`);
console.log(`Vida do ${meuBulbasaur.apelido}: ${meuBulbasaur.vida}`);

// 5. [DESTAQUE VERMELHO] - Tentativa de imprimir o atributo privado
// console.log(meuSquirtle.#vida); // Gera erro de sintaxe por tentar acessar atributo privado de fora