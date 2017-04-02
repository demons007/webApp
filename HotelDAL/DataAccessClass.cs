using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace HotelDAL
{
    public class DataAccessClass
    {
        private SqlConnection CreateConnection() {

            string constr = ConfigurationManager.ConnectionStrings["myCString"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            return con;
        }

        public bool AuthenticateUser(Auth user)
        {
            SqlConnection con = CreateConnection();
            SqlCommand cmd = new SqlCommand("sp_LoginAuth", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@Id", SqlDbType.VarChar,30).Value = user.Id1;
            cmd.Parameters.Add("@userType", SqlDbType.VarChar,30).Value = user.UserType1;
            cmd.Parameters.Add("@pass", SqlDbType.VarChar,30);
            cmd.Parameters["@pass"].Direction = ParameterDirection.Output;
            cmd.Parameters.Add("@success", SqlDbType.Int);
            cmd.Parameters["@success"].Direction = ParameterDirection.Output;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                string password = cmd.Parameters["@pass"].Value.ToString();
                int success = Convert.ToInt32(cmd.Parameters["@success"].Value.ToString());
                if (success > 0)
                {
                    int compare = String.Compare(user.Password1, password, false);
                    if (compare == 0)
                    {
                        return true;
                    }
                    else
                        return false;
                }
                else
                    return false;
            }
            catch (Exception ex) {
                return false;
            }
                
             
            finally{
            con.Close();
            }

        }

        public string AddGuest(AdUser user)
        {
            SqlConnection con = CreateConnection();
            SqlCommand cmd = new SqlCommand("sp_GuestRegistration", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@RoomNumber", SqlDbType.VarChar, -1).Value = user.RoomNo;
            cmd.Parameters.Add("@FirstName", SqlDbType.VarChar, -1).Value = user.Name;
            cmd.Parameters.Add("@LastName", SqlDbType.VarChar, -1).Value = "LNU";
            cmd.Parameters.Add("@PhNumber", SqlDbType.VarChar, -1).Value = user.Phone;
            cmd.Parameters.Add("@Gender", SqlDbType.VarChar, -1).Value = user.Gender;
            cmd.Parameters.Add("@Email", SqlDbType.VarChar, -1).Value = user.Email;
            cmd.Parameters.Add("@ImgPath", SqlDbType.VarChar, -1).Value = user.FilePath;
            cmd.Parameters.Add("@success", SqlDbType.VarChar,-1);
            cmd.Parameters["@success"].Direction = ParameterDirection.Output;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                return cmd.Parameters["@success"].Value.ToString();
                
            }
            catch (Exception ex)
            {
                return "Error";
            }


            finally
            {
                con.Close();
            }

        }
        
    }
}
