//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MVCProyectoIntegrador
{
    using System;
    using System.Collections.Generic;
    
    public partial class DetailsOrders
    {
        public int ID { get; set; }
        public int ID_Pedido { get; set; }
        public Nullable<int> ID_Producto { get; set; }
        public Nullable<decimal> PrecioUnidad { get; set; }
        public Nullable<int> Cantidad { get; set; }
        public decimal Descuento { get; set; }
    
        public virtual Orders Orders { get; set; }
    }
}
