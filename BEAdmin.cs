using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace BE
{
    public class BEAdmin
    {
        public class Carrousel : BEGeneral
        {
            public int ID { get; set; }
            //[Required]
            public string ID_Image { get; set; }
            [Required]
            public string Title { get; set; }
            [Required]
            public string SubTitle { get; set; }
            [Required]
            public string Team1 { get; set; }
            [Required]
            public string Team2 { get; set; }
            [Required]
            public string Hyperlink { get; set; }
            [Required]
            public bool IsEnabled { get; set; }
        }

        public class Noticias : BEGeneral
        {
            public int ID { get; set; }
            public string ID_Image { get; set; }
            [Required]
            public string Hyperlink { get; set; }
            [Required]
            public string Title { get; set; }
            [Required]
            public bool IsEnabled { get; set; }
            [Required]
            public string Autor { get; set; }
        }

        public class Fotos : BEGeneral
        {
            public int ID { get; set; }
            public string ID_Image { get; set; }
            [Required]
            public string Title { get; set; }
            [Required]
            public string Description { get; set; }
            [Required]
            public string Hyperlink { get; set; }
            [Required]
            public string Date { get; set; }
            [Required]
            public bool IsEnabled { get; set; }
        }

        public class Training : BEGeneral
        {
            public int ID { get; set; }
            [Required]
            public string Title { get; set; }
            [Required]
            public string SubTitle { get; set; }
            [Required]
            public string Button_Name { get; set; }
            [Required]
            public string Button_Name1 { get; set; }
            [Required]
            public string Button_Name2 { get; set; }
            [Required]
            public bool IsEnabled { get; set; }
        }

        public class LastMatch : BEGeneral
        {
            public int ID { get; set; }
            public string Title { get; set; }
            public string Description { get; set; }
            public string ID_Image { get; set; }
            public string Date { get; set; }
            public string Ranking { get; set; }
            public string Player { get; set; }
            public string Nation { get; set; }
            public string Points { get; set; }
            public bool IsEnabled { get; set; }

        }
        public class NextMatch : BEGeneral
        {
            public int ID { get; set; }
            public string Title { get; set; }
            public string Description { get; set; }
            public string Date { get; set; }
            public string ID_Imagen { get; set; }
            public bool IsEnabled { get; set; }
        }

        public class Tennis : BEGeneral
        {
            public int ID { get; set; }
            [Required]
            public string Title { get; set; }
            [Required]
            public string TitleTwo { get; set; }
            [Required]
            public string Subtitle { get; set; }
            public string ID_Image { get; set; }
            [Required]
            public string Date { get; set; }
            [Required]
            public string TitleThree { get; set; }
            [Required]
            public string Description { get; set; }
            [Required]
            public bool IsEnabled { get; set; }
        }

        public class Estadistica : BEGeneral
        {
            public int ID { get; set; }
            public string Description { get; set; }
            public string Progress { get; set; }
            public string Porcentaje { get; set; }
            public bool IsEnabled { get; set; }
        }

        public class DescriptionPlayer : BEGeneral
        {
            public int ID { get; set; }
            public string Description { get; set; }
            public string ID_Image { get; set; }
            public bool IsEnabled { get; set; }
        }
        public class Subscription : BEGeneral
        {
            public int ID { get; set; }
            public string Description { get; set; }
            public string DescSubscription { get; set; }
            public bool IsEnabled { get; set; }
        }
        public class Products : BEGeneral
        {
            public int ID { get; set; }
            public string Title { get; set; }
            public string Description { get; set; }
            public decimal Price { get; set; }
            public string ID_Image { get; set; }
            public Category category { get; set; }
            public int ID_Categoria { get; set; }
            public string Categoria_Name { get; set; }
            public int Stock { get; set; }
            public bool IsEnabled { get; set; }
            public Products()
            {

            }
        }
        public class Category : BEGeneral
        {
            public int ID { get; set; }
            public string Categoria { get; set; }
            public string Description { get; set; }
            public bool IsEnabled { get; set; }
            public Category()
            {

            }
        }

        public class Client : BEGeneral
        {
            public int ID { get; set; }
            public string Nombre { get; set; }
            public string Pais { get; set; }
            public string Telefono { get; set; }
        }
        public class Employee : BEGeneral
        {
            public int ID { get; set; }
            public string Nombre { get; set; }
            public string Pais { get; set; }
            public string Cargo { get; set; }
            public string Telefono { get; set; }
        }
        public class Orders : BEGeneral
        {
            public int ID { get; set; }
            public int ID_Client { get; set; }
            public int ID_Employee { get; set; }
            public string FechaPedido { get; set; }
            public string Destinatario { get; set; }
        }
        public class DetailsOrders : BEGeneral
        {
            public int ID_Pedido { get; set; }
            public int ID_Producto { get; set; }
            public decimal PrecioUnidad { get; set; }
            public int Cantidad { get; set; }
            public decimal Descuento { get; set; }

        }
    }
}
