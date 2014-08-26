using System.ComponentModel.DataAnnotations;

namespace KendoMobile.Models
{
  public class BoardGame
  {

    [Editable(false)]
    public int ID { get; set; }

    [Required(ErrorMessage="Products need names")]
    [MinLength(3)]
    public string Name { get; set; }

    [Required(ErrorMessage="Every product must have a a price, nothing is free")]
    public decimal Price { get; set; }

    [Required, Range(0, 1000)]
    public int NumInStock { get; set; }

  }

}