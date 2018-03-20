using Crud.Data.Models;
using Microsoft.EntityFrameworkCore;


namespace Crud.CrudDataContext{
    
    public class AppDataContext : DbContext{

        public AppDataContext(DbContextOptions<AppDataContext> options) : base (options)
        {

        }
        public DbSet<Produto> Produtos {get;set;}

        protected override void OnModelCreating(ModelBuilder builder) {
        base.OnModelCreating(builder);
    }
    }
}