using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using System.Configuration;

namespace WebApplication1
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static string AdminDeleteUser(string Ura)
        {
            string constr = ConfigurationManager.ConnectionStrings["myCString"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from Hotel_Guest where RoomNumber='"+Ura+"'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            return Ura;
        }
    }
}