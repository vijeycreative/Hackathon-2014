using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Online_Doctor
{
    public class Connectivity
    {
        private SqlConnection SqlCon = null;
        public Connectivity()
        {
            try
            {
                SqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["dbConnectionString"].ConnectionString);
                SqlCon.Open();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message.ToString());
            }            
        }


        public SqlDataReader GetBPSymptoms(string BodyPart)
        {
            SqlCommand cmd;
            SqlDataReader dr;
            try
            {
                cmd = new SqlCommand("pGetBPSymptoms", SqlCon);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@BodyPart", BodyPart));
                dr = cmd.ExecuteReader();
                return dr;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                cmd = null;
            }
        }
        public SqlDataReader GetSymptomCauses(string SymptomsID)
        {
            SqlCommand cmd;
            SqlDataReader dr;
            try
            {
                cmd = new SqlCommand("pGetSymptomCauses", SqlCon);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@SymptomsID", SymptomsID));
                dr = cmd.ExecuteReader();
                return dr;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                cmd = null;
            }
        }
        public SqlDataReader GetCausesInfo(string CausesID)
        {
            SqlCommand cmd;
            SqlDataReader dr;
            try
            {
                cmd = new SqlCommand("pGetCausesInfo", SqlCon);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@CausesID", CausesID));
                dr = cmd.ExecuteReader();
                return dr;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                cmd = null;
            }
        }
        public SqlDataReader GetLogin(string UserName, string Password)
        {
            SqlCommand cmd;
            SqlDataReader dr;
            try
            {
                cmd = new SqlCommand("pGetLogin", SqlCon);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@UserName", UserName));
                cmd.Parameters.Add(new SqlParameter("@Password", Password));
                dr = cmd.ExecuteReader();
                return dr;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                cmd = null;
            }
        }
        public int InsertUser(string UserName, string Email, string UserType, string Password)
        {
            SqlCommand cmd;
            int iRes = 0;
            try
            {
                cmd = new SqlCommand("pInsertUser", SqlCon);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@UserName", UserName));
                cmd.Parameters.Add(new SqlParameter("@Email", Email));
                cmd.Parameters.Add(new SqlParameter("@UserType", UserType));
                cmd.Parameters.Add(new SqlParameter("@Password", Password));
                SqlParameter ResultValue = new SqlParameter("@Result", iRes);
                ResultValue.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(ResultValue);
                cmd.ExecuteNonQuery();
                int iResult = Convert.ToInt32(cmd.Parameters["@Result"].Value.ToString());

                return iResult;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                cmd = null;
                SqlCon.Close();
            }
        }
    }
}