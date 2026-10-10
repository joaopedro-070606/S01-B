class HeroiOverwatch:
    def __init__(self, codinome: str, funcao: str):
        self.codinome = codinome
        self.funcao = funcao

    def usar_suprema(self):
        print(f"[{self.codinome}] usou uma suprema genérica!")


class HeroiTanque(HeroiOverwatch):
    def usar_suprema(self):
        print(f"[{self.codinome}] usou a suprema de Tanque: Abalo Terrestre!")


class HeroiSuporte(HeroiOverwatch):
    def usar_suprema(self):
        print(f"[{self.codinome}] usou a suprema de Suporte: Transcendência!")

    def curar_equipe(self):
        print(f"[{self.codinome}] está curando a equipe!")


if __name__ == "__main__":
    reinhardt = HeroiTanque("Reinhardt", "Tanque")
    zenyatta = HeroiSuporte("Zenyatta", "Suporte")

    lista_herois: list[HeroiOverwatch] = [reinhardt, zenyatta]

    for heroi in lista_herois:
        heroi.usar_suprema()
        if isinstance(heroi, HeroiSuporte):
            heroi.curar_equipe()