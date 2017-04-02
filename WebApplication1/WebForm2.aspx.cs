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
using System.IO;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static string PageHomeOf()
        {
            return "hi";
        }

        [WebMethod]
        public static string AddUser(AdUser user)
        {

            DataAccessClass _dac = new DataAccessClass();
            return _dac.AddGuest(user);
        }

        [WebMethod]
        public static string OpenUriSaveIm(string name,string f_name) {
            var str = name;
            var str2 = f_name;
            //var str1 = str.Replace("data:image/jpeg;base64,/9j/", "");
            //File.Create(@"C:\Users\Abhi\Desktop\xyz.txt");
            //File.WriteAllBytes(@"C:\Users\Abhi\Desktop\xyz.txt", str1);
            var snd = @"C:\Users\User\Desktop\proj\" + str2;
            System.IO.StreamWriter file = new System.IO.StreamWriter(snd);
            file.WriteLine(str);

            file.Close();
            return snd;
        }
        [WebMethod]
        public static List<List<string>> AddExpense(string r_no, List<Assume> cost)
        {
            List<string> nm = new List<string>();
            List<string> qn = new List<string>();
            List<string> rt = new List<string>();
            List<Int32> tp = new List<Int32>();
            string constr = ConfigurationManager.ConnectionStrings["myCString"].ConnectionString;
            
            foreach (var l in cost)
            {
                
                nm.Add(l.Name);
                qn.Add(l.Quantity);
                rt.Add(l.Rate);
                tp.Add(Convert.ToInt32(l.Quantity) * Convert.ToInt32(l.Rate));
                SqlConnection con = new SqlConnection(constr);
                con.Open();
                
                string query = "INSERT INTO cost (room, item, cost, quantity)";
                query += " VALUES (@room, @item, @cost, @quantity)";

                SqlCommand myCommand = new SqlCommand(query, con);
                myCommand.Parameters.AddWithValue("@room", r_no);
                myCommand.Parameters.AddWithValue("@item", l.Name);
                myCommand.Parameters.AddWithValue("@cost", l.Rate);
                myCommand.Parameters.AddWithValue("@quantity", l.Quantity);
                // ... other parameters
                myCommand.ExecuteNonQuery();
                con.Close();

            }
            List<List<string>> lyt = new List<List<string>>();
            SqlConnection conn = new SqlConnection(constr);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from cost where room ='" + r_no + "'", conn);
            SqlDataReader rd = cmd.ExecuteReader();
            int cvd = 0;
            while (rd.Read())
            {
                List<string> dm = new List<string>();
                dm.Add(rd.GetString(0));
                dm.Add(rd.GetString(1));
                dm.Add(rd.GetString(2));
                dm.Add(rd.GetString(3));
                lyt.Add(dm);
                cvd = cvd + 1;
            }
            conn.Close();
            return lyt;
        }
        [WebMethod]
        public static List<List<string>> GenerateBill(string R_n)
        {
            string constr = ConfigurationManager.ConnectionStrings["myCString"].ConnectionString;
            List<List<string>> lyt = new List<List<string>>();
            SqlConnection conn = new SqlConnection(constr);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from cost where room ='" + R_n + "'", conn);
            SqlDataReader rd = cmd.ExecuteReader();
            int cvd = 0;
            while (rd.Read())
            {
                List<string> dm = new List<string>();
                dm.Add(rd.GetString(0));
                dm.Add(rd.GetString(1));
                dm.Add(rd.GetString(2));
                dm.Add(rd.GetString(3));
                lyt.Add(dm);
                cvd = cvd + 1;
            }
            conn.Close();
            return lyt;
        }
    }
   
}