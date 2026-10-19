using System;
using System.Collections.Generic;

public class EntidadeCosmica
{
    public string Nome { get; set; }
    public string Origem { get; set; } = "Desconhecida";

    public EntidadeCosmica(string nome)
    {
        this.Nome = nome;
    }

    public virtual void Manifestar()
    {
        Console.WriteLine($"\n--- Entidade: {Nome} ---");
        if (Origem != "Desconhecida")
        {
            Console.WriteLine($"Origem: {Origem}");
        }
    }
}

public class Profundo : EntidadeCosmica
{
    public Profundo(string nome) : base(nome)
    {
    }

    public override void Manifestar()
    {
        Console.WriteLine($"\n--- {Nome} ---");
        Console.WriteLine("Um Profundo emerge das profundezas do oceano!");
    }
}

public class MiGo : EntidadeCosmica
{
    public MiGo(string nome) : base(nome)
    {
    }

    public override void Manifestar()
    {
        base.Manifestar();
        Console.WriteLine("O Mi-Go zune no ar com suas asas bizarras.");
    }
}

public class Pesquisador
{
    public string Nome { get; set; }
    private List<EntidadeCosmica> _catalogo;

    public Pesquisador(string nome)
    {
        this.Nome = nome;
        this._catalogo = new List<EntidadeCosmica>();
    }

    public void Catalogar(EntidadeCosmica e)
    {
        this._catalogo.Add(e);
    }

    public void LerCatalogo()
    {
        Console.WriteLine($"\n=== Catálogo do Pesquisador {Nome} ===");
        foreach (var entidade in _catalogo)
        {
            entidade.Manifestar();
        }
    }
}

public class ProgramExercicio4
{
    public static void Main()
    {
        EntidadeCosmica entidadeGenerica = new EntidadeCosmica("Cor Abstrata");
        
        Profundo profundo = new Profundo("Dagon");
        profundo.Origem = "Fossa Oceânica";

        MiGo migo = new MiGo("Fungo de Yuggoth");
        migo.Origem = "Yuggoth (Plutão)";

        Pesquisador pesquisador = new Pesquisador("Dr. Armitage");

        pesquisador.Catalogar(entidadeGenerica);
        pesquisador.Catalogar(profundo);
        pesquisador.Catalogar(migo);

        pesquisador.LerCatalogo();
    }
}
