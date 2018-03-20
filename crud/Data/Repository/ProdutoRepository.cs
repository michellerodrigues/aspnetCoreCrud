using System;
using System.Collections.Generic;
using System.Linq;
using Crud.CrudDataContext;
using Crud.Data.Interfaces;
using Crud.Data.Models;
using Crud.Data.Repository;

public class ProdutoRepository : Repository<Produto>, IProdutoRepository
    {
    public ProdutoRepository(AppDataContext context) : base(context)
    {
    }

    public IEnumerable<Produto> FindProdutos(Func<Produto, bool> predicate)
    {
        return _context.Produtos.Where(predicate);
    }
}