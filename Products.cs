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
    
    public partial class Products
    {
        public int ID { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public Nullable<decimal> Price { get; set; }
        public string ID_Image { get; set; }
        public Nullable<int> ID_Categoria { get; set; }
        public Nullable<int> Stock { get; set; }
        public Nullable<bool> IsEnabled { get; set; }
    }
}
