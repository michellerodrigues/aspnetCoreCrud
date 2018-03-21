using Crud.CrudDataContext;
using Crud.Data.Models;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;

namespace Crud.Data
{
    public static class DBInicializar
    {
        public static void StartDataBase(IApplicationBuilder app)
        {
            using (var serviceScope = app.ApplicationServices.CreateScope())
            {
                var context = serviceScope.ServiceProvider.GetService<AppDataContext>();
                if(context.Database.EnsureCreated())
                {
                    var produto1 = new Produto { Nome="Mini Garrafa Térmica Gourmet", Valor=835}; 
                    var produto2 = new Produto { Nome="Cabideiro de Aço Inoxidável", Valor=635}; 
                    var produto3 = new Produto { Nome="Porta Copos Gourmet", Valor=395};

                    context.Produtos.Add(produto1);
                    context.Produtos.Add(produto2);
                    context.Produtos.Add(produto3);

                    context.SaveChanges();
                }
                
            }
        }
    }
}