using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BEAdmin
    {

        public class Carrousel : BEGeneral
        {
            public int ID { get; set; }
            public string ID_Image { get; set; }
            public string Title { get; set; }
            public string SubTitle { get; set; }
            public string Team1 { get; set; }
            public string Team2 { get; set; }
            public string Hyperlink { get; set; }
            public bool IsEnabled { get; set; }
        }

        public class Noticias : BEGeneral
        {
            public int ID { get; set; }
            public string ID_Image { get; set; }
            public string Hyperlink { get; set; }
            public string Title { get; set; }
            public bool IsEnabled { get; set; }
        }

        public class Fotos : BEGeneral
        {
            public int ID { get; set; }
            public string ID_Image { get; set; }
            public string Title { get; set; }
            public string Description { get; set; }
            public string Hyperlink { get; set; }
            public string Date { get; set; }
            public bool IsEnabled { get; set; }
        }

        public class Training : BEGeneral
        {
            public int ID { get; set; }
            public string Title { get; set; }
            public string SubTitle { get; set; }
            public string Button_Name { get; set; }
            public string Button_Name1 { get; set; }
            public string Button_Name2 { get; set; }
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
            public string Title { get; set; }
            public string TitleTwo { get; set; }
            public string Subtitle { get; set; }
            public string ID_Image { get; set; }
            public string Date { get; set; }
            public string TitleThree { get; set; }
            public string Description { get; set; }
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
    }
}
