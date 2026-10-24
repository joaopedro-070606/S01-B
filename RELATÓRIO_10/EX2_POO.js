class Pistola {
    constructor(modelo) {
        this.modelo = modelo;
    }
}

class AgenteProtocolo {
    #pistola;

    constructor(codinome, modeloDaPistola) {
        this.codinome = codinome;
        this.#pistola = new Pistola(modeloDaPistola); 
    }

    usarHabilidade() {
        throw new Error(`O agente ${this.codinome} deve implementar sua própria habilidade!`);
    }

    entrarEmCombate() {
        console.log(`[${this.codinome}] sacou a ${this.#pistola.modelo} | ${this.usarHabilidade()}`);
    }
}

class Controlador extends AgenteProtocolo {
    usarHabilidade() {
        return "Bloqueando a visão dos inimigos com fumaça!";
    }
}

class Iniciador extends AgenteProtocolo {
    usarHabilidade() {
        return "Revelando a posição dos inimigos na área!";
    }
}

class Duelista extends AgenteProtocolo {
    usarHabilidade() {
        return "Avançando agressivamente para buscar o primeiro abate!";
    }
}

class Esquadrao {
    #agentes;

    constructor(nome, agentes = []) {
        this.nome = nome;
        this.#agentes = agentes; 
    }

    iniciarPartida() {
        console.log(`\n--- ESQUADRÃO ${this.nome} ENTRANDO NA PARTIDA ---`);
        this.#agentes.forEach(a => {
            a.entrarEmCombate();
        });
    }

    listarControladores() {
        return this.#agentes.filter(a => a instanceof Controlador);
    }
}

const omen = new Controlador('Omen', 'Ghost');
const viper = new Controlador('Viper', 'Classic');
const sova = new Iniciador('Sova', 'Sheriff');
const jett = new Duelista('Jett', 'Frenzy');

const meuTime = new Esquadrao('Alpha', [omen, viper, sova, jett]);

meuTime.iniciarPartida();

console.log(`\nControladores do Esquadrão:`);
meuTime.listarControladores().forEach(c => {
    console.log(`- ${c.codinome}`);
});

// 8. [DESTAQUE VERMELHO] - Criação e erro na classe base
// const agenteBase = new AgenteProtocolo('Teste', 'Classic');
// agenteBase.entrarEmCombate(); // Gera erro pois AgenteProtocolo lança Error no usarHabilidade()