using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static List<string> ShowUser(string Ura)
        {
            List<string> st = new List<string>();
            string constr = ConfigurationManager.ConnectionStrings["myCString"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Hotel_Guest where RoomNumber ='" + Ura + "'", con);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                st.Add(rd.GetString(0));
                st.Add(rd.GetString(1));
                st.Add(rd.GetString(2));
                st.Add(rd.GetDecimal(3).ToString());
                st.Add(rd.GetString(4));
                st.Add(rd.GetString(5));
                st.Add(rd.GetString(6));
                st.Add(rd.GetBoolean(7).ToString());
                st.Add(rd.GetDateTime(8).ToString());

            }
            con.Close();
            
            
            return st;
        }
    }
}