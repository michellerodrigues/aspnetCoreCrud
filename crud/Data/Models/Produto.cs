using System.ComponentModel.DataAnnotations;

namespace Crud.Data.Models
{
    public class Produto
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(255)]
        public string Nome { get; set; }

        [Required]
        public decimal Valor { get; set; }
    }
}
