using System;

public class CombatenteDeGondor
{
    public string Nome { get; private set; }
    public string Povo { get; private set; }
    public string Posto { get; private set; }
    
    public string Armamento { get; private set; } = "Desarmado";

    public CombatenteDeGondor(string nome, string povo, string posto)
    {
        this.Nome = nome;
        this.Povo = povo;
        this.Posto = posto;
    }

    public void Equipar(string arma)
    {
        this.Armamento = arma;
    }

    public void ApresentarUnidade()
    {
        Console.WriteLine($"\nNome: {Nome} | Povo: {Povo} | Posto: {Posto}");
        
        if (Armamento != "Desarmado")
        {
            Console.WriteLine($"Armamento: {Armamento}");
        }
    }
}

public class ProgramExercicio1
{
    public static void Main()
    {
        CombatenteDeGondor soldado1 = new CombatenteDeGondor("Aragorn", "Dúnedain", "Rei");
        CombatenteDeGondor soldado2 = new CombatenteDeGondor("Faramir", "Gondor", "Capitão");
        CombatenteDeGondor soldado3 = new CombatenteDeGondor("Pippin", "Hobbit", "Guarda da Cidadela");

        soldado1.Equipar("Andúril");
        soldado2.Equipar("Arco e Espada");
      
        soldado1.ApresentarUnidade();
        soldado2.ApresentarUnidade();
        soldado3.ApresentarUnidade();

    }
}
