using System;
using System.Collections.Generic;

public class Pokemon
{
    public string Especie { get; set; }
    public int Nivel { get; set; }

    public Pokemon(string especie, int nivel)
    {
        this.Especie = especie;
        this.Nivel = nivel;
    }

    public virtual void Atacar()
    {
        Console.WriteLine($"\n--- {Especie} (Nível {Nivel}) ---");
        Console.WriteLine("Usando um ataque comum.");
    }
}

public class TipoPlanta : Pokemon
{
    public TipoPlanta(string especie, int nivel) : base(especie, nivel)
    {
    }

    public override void Atacar()
    {
        Console.WriteLine($"\n--- {Especie} (Nível {Nivel}) ---");
        Console.WriteLine("Usando um golpe próprio: Folha Navalha!");
    }
}

public class TipoEletrico : Pokemon
{
    public TipoEletrico(string especie, int nivel) : base(especie, nivel)
    {
    }

    public override void Atacar()
    {
        base.Atacar();
        Console.WriteLine("Soltando uma descarga elétrica: Choque do Trovão!");
    }
}

public class ProgramExercicio2
{
    public static void Main()
    {
        Pokemon normal = new Pokemon("Eevee", 10);
        TipoPlanta planta = new TipoPlanta("Bulbasaur", 12);
        TipoEletrico eletrico = new TipoEletrico("Pikachu", 15);

        List<Pokemon> listaPokemons = new List<Pokemon>();
        listaPokemons.Add(normal);
        listaPokemons.Add(planta);
        listaPokemons.Add(eletrico);

        foreach (var p in listaPokemons)
        {
            p.Atacar();
        }
    }
}
