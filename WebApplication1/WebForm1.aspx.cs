using HotelDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        [WebMethod]
        public static string OnSubmit()
        {
            return "message from code behind";
        }
        
        [WebMethod]
        public static string test(object sender, EventArgs e)
        {
            return e.ToString();
        }


        [WebMethod]
        public static string AuthAdmin(string aid,string pass)
        {
            var x = aid;
            
            return "success";
        }

        [WebMethod]
        public static bool AuthenticateLogin(Auth user)
        {
            DataAccessClass _dac = new DataAccessClass();
             return _dac.AuthenticateUser(user);
        }

        


    }
}