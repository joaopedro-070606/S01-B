class UsuarioDeNen {
    constructor(nome) {
        this.nome = nome;
    }

    atacar(alvo) {
        console.log(`${this.nome} disparou um pulso bruto de aura contra ${alvo.nome}!`);
    }
}

class Intensificador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} usou um soco destrutivo reforçado com aura na Aranha ${alvo.nome}!`);
    }
}

class Transmutador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} transmutou sua aura em eletricidade para paralisar a Aranha ${alvo.nome}!`);
    }
}

class Materializador extends UsuarioDeNen {
    atacar(alvo) {
        console.log(`${this.nome} materializou correntes prendendo a Aranha ${alvo.nome}!`);
    }
}

class Aranha {
    constructor(nome, numero) {
        this.nome = nome;
        this.numero = numero;
    }
}

class TrupeFantasma {
    #aranhas;

    constructor(cidade, aranhas = []) {
        this.cidade = cidade;
        this.#aranhas = aranhas;
    }

    revelarAranhas() {
        console.log(`\nA Trupe Fantasma foi avistada em ${this.cidade}! Membros presentes:`);
        this.#aranhas.forEach(a => {
            console.log(`Membro #${a.numero}: ${a.nome}`);
        });
    }

    buscarAranha(numero) {
        return this.#aranhas.find(a => a.numero === numero);
    }
}

// --- MAIN ---
const chrollo = new Aranha('Chrollo Lucilfer', 0);
const hisoka = new Aranha('Hisoka Morow', 4);

const trupe = new TrupeFantasma('Yorknew City', [chrollo, hisoka]);
trupe.revelarAranhas();

const alvoEncontrado = trupe.buscarAranha(4); // Busca o Hisoka

const hunters = [
    new Intensificador('Gon Freecss'),
    new Transmutador('Killua Zoldyck'),
    new Materializador('Kurapika')
];

console.log(`\nO alvo ${alvoEncontrado.nome} foi encontrado pelos Hunters! Combate iniciado:`);

hunters.forEach(h => {
    h.atacar(alvoEncontrado);
});