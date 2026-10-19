using System;
using System.Collections.Generic;

public class Grimorio
{
    public string FeiticoFavorito { get; set; } = "Nenhum";

    public void Abrir()
    {
        Console.WriteLine($"Grimório aberto! Feitiço favorito: {FeiticoFavorito}");
    }
}

public class Companheiro
{
    public string Nome { get; set; }
    public string Funcao { get; set; }

    public Companheiro(string nome, string funcao)
    {
        this.Nome = nome;
        this.Funcao = funcao;
    }

    public void Apresentar()
    {
        Console.WriteLine($"Companheiro: {Nome} | Função: {Funcao}");
    }
}

public class Maga
{
    public string Nome { get; set; }
    public Grimorio GrimorioAssociado { get; set; } 
    private List<Companheiro> _grupo; 

    public Maga(string nome)
    {
        this.Nome = nome;
        this.GrimorioAssociado = new Grimorio();
        this._grupo = new List<Companheiro>();
    }

    public void Recrutar(Companheiro c)
    {
        this._grupo.Add(c);
    }

    public void MostrarGrupo()
    {
        Console.WriteLine($"\nGrupo da Maga {Nome}:");
        foreach (var companheiro in _grupo)
        {
            companheiro.Apresentar();
        }
    }
}

public class ProgramExercicio3
{
    public static void Main()
    {
        Companheiro comp1 = new Companheiro("Fern", "Maga Aprendiz");
        Companheiro comp2 = new Companheiro("Stark", "Guerreiro");

        Maga frieren = new Maga("Frieren");
        
        frieren.Recrutar(comp1);
        frieren.Recrutar(comp2);

        frieren.GrimorioAssociado.FeiticoFavorito = "Zoltraak";

        frieren.MostrarGrupo();
        Console.WriteLine("");
        frieren.GrimorioAssociado.Abrir();
        
    }
}
