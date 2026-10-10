from abc import ABC, abstractmethod

class IUnidadeDeRede(ABC):
    @abstractmethod
    def executar_invasao(self):
        pass


class Cyberdeck:
    def __init__(self, modelo: str):
        self.modelo = modelo


class OperadorNetrunner(IUnidadeDeRede):
    def __init__(self, nome: str, modelo_cyberdeck: str):
        self.nome = nome
        self.cyberdeck = Cyberdeck(modelo_cyberdeck)

    def executar_invasao(self):
        print(f"[{self.nome}] usando Cyberdeck {self.cyberdeck.modelo} quebrando o gelo (ICE) de um servidor.")


class DroneDeVigilancia(IUnidadeDeRede):
    def __init__(self, codigo: str, identificacao: str):
        self.codigo = codigo
        self.identificacao = identificacao

    def executar_invasao(self):
        print(f"[{self.codigo} - {self.identificacao}] interceptando o sinal da rede.")


class CelulaHacker:
    def __init__(self, nome: str, membros: list[IUnidadeDeRede]):
        self.nome = nome
        self._membros = membros

    def iniciar_ataque(self):
        print(f"\n--- A Célula Hacker {self.nome} iniciou o ataque! ---")
        for membro in self._membros:
            membro.executar_invasao()


if __name__ == "__main__":
    netrunner = OperadorNetrunner("Lucy", "Arasaka Cyberdeck")
    drone = DroneDeVigilancia("DRN-X9", "Drone Patrulha")

    membros_ataque: list[IUnidadeDeRede] = [netrunner, drone]
    
    celula = CelulaHacker("Edgerunners", membros_ataque)
    celula.iniciar_ataque()

    # unidade = IUnidadeDeRede()