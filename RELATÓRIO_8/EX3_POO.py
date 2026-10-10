class Persona:
    def __init__(self, nome: str, arcano: str):
        self.nome = nome
        self.arcano = arcano

    def invocar(self):
        print(f"Persona: {self.nome} | Arcano: {self.arcano}")


class Aliado:
    def __init__(self, nome: str, codinome: str):
        self.nome = nome
        self.codinome = codinome


class Lider:
    def __init__(self, codinome: str):
        self.codinome = codinome
        self.persona = Persona("Arsène", "Louco")
        self._equipe = []

    def recrutar(self, aliado: Aliado):
        self._equipe.append(aliado)

    def infiltrar(self, palacio: str):
        print(f"\n--- Infiltrando o Palácio de {palacio} ---")
        self.persona.invocar()
        print("Equipe:")
        for aliado in self._equipe:
            print(f"- {aliado.nome} ({aliado.codinome})")


if __name__ == "__main__":
    skull = Aliado("Ryuji Sakamoto", "Skull")
    panther = Aliado("Ann Takamaki", "Panther")

    joker = Lider("Joker")
    joker.recrutar(skull)
    joker.recrutar(panther)

    joker.infiltrar("Kamoshida")

    # Resposta da Tarefa 6:
    # Composição: A classe 'Persona' é instanciada diretamente dentro do __init__ do 'Lider'. 
    # Se o líder deixar de existir, a Persona também deixa.
    # Agregação: A classe 'Aliado' é criada fora da classe 'Lider' e passada apenas como 
    # referência para a lista '_equipe'. Eles continuam existindo mesmo sem o 'Lider'.