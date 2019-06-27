using BE;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DA
{
    public class DAGeneral
    {
        public virtual int Insert(SqlConnection con, BEGeneral oBE)
        {
            return 0;
        }
        public virtual int Insert(SqlConnection con, BEGeneral oBE, SqlTransaction oTrx = null)
        {
            return 0;
        }
        public virtual int Update(SqlConnection con, BEGeneral oBE)
        {
            return 0;
        }
        public virtual int Update(SqlConnection con, BEGeneral oBE, SqlTransaction oTrx = null)
        {
            return 0;
        }
        public virtual int Update(SqlConnection con, string ID, bool IsEnabled, SqlTransaction oTrx = null)
        {
            return 0;
        }
        public virtual int Delete(SqlConnection con, BEGeneral oBE)
        {
            return 0;
        }
        public virtual int Delete(SqlConnection con, int ID)
        {
            return 0;
        }


        public virtual List<BEAdmin.Carrousel> RetrieveCarrousel(SqlConnection con)
        {
            return null;
        }
        public virtual BEAdmin.Carrousel RetrieveCarrouselFirst(SqlConnection con)
        {
            return null;
        }

        public virtual BEAdmin.Carrousel RetrieveCarrouselById(SqlConnection con, int id)
        {
            return null;
        }

        public virtual List<BEAdmin.Noticias> RetrieveNoticias(SqlConnection con)
        {
            return null;
        }
        public virtual BEAdmin.Noticias RetrieveNoticiasFirst(SqlConnection con, int id)
        {
            return null;
        }
        public virtual BEAdmin.Noticias RetrieveNoticiasFirstByID(SqlConnection con, int id)
        {
            return null;
        }

        public virtual List<BEAdmin.Fotos> RetrieveFotos(SqlConnection con)
        {
            return null;
        }
        public virtual BEAdmin.Fotos RetrieveFotosFirst(SqlConnection con)
        {
            return null;
        }
        public virtual BEAdmin.Fotos RetrieveFotosByID(SqlConnection con, int id)
        {
            return null;
        }
        public virtual List<BEAdmin.Training> RetrieveTraining(SqlConnection con)
        {
            return null;
        }
        public virtual BEAdmin.Training RetrieveTrainingFirst(SqlConnection con, int id)
        {
            return null;
        }

        public virtual List<BEAdmin.LastMatch> RetrieveLastMatch(SqlConnection con)
        {
            return null;
        }
        public virtual BEAdmin.LastMatch RetrieveLastMatchFirst(SqlConnection con, int id)
        {
            return null;
        }
        public virtual List<BEAdmin.NextMatch> RetrieveNextMatch(SqlConnection con)
        {
            return null;
        }
        public virtual BEAdmin.NextMatch RetrieveNextMatchFirst(SqlConnection con, int id)
        {
            return null;
        }
        public virtual List<BEAdmin.Tennis> RetrieveTennis(SqlConnection con)
        {
            return null;
        }
        public virtual BEAdmin.Tennis RetrieveTennisFirst(SqlConnection con, int id)
        {
            return null;
        }
        public virtual List<BEAdmin.Estadistica> RetrieveEstadistica(SqlConnection con)
        {
            return null;
        }
        public virtual BEAdmin.Estadistica RetrieveEstadisticaFirst(SqlConnection con, int id)
        {
            return null;
        }
        public virtual List<BEAdmin.DescriptionPlayer> RetrieveDescriptionPlayer(SqlConnection con)
        {
            return null;
        }
        public virtual BEAdmin.DescriptionPlayer RetrieveDescriptionPlayerFirst(SqlConnection con, int id)
        {
            return null;
        }
        public virtual List<BEAdmin.Subscription> RetrieveSubscription(SqlConnection con)
        {
            return null;
        }
        public virtual BEAdmin.Subscription RetrieveSubscriptionFirst(SqlConnection con, int id)
        {
            return null;
        }
    }
}
