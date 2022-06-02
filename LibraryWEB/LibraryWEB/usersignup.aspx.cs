using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryWEB
{
    public partial class usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        // sign up button click event
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {

                Response.Write("<script>alert('Member Already Exist with this Member ID, try other ID');</script>");
            }
            else
            {
                signUpNewMember();
            }
        }

        // user defined method
        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from uye_master_tbl where uye_id='" + TextBox8.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        void signUpNewMember()
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO uye_master_tbl(ad_soyad,dogum_tarihi,iletisim_no,email,ulke,sehir,posta_kodu,adres,uye_id,sifre,hesap_durumu) values(@ad_soyad,@dogum_tarihi,@iletisim_no,@email,@ulke,@sehir,@posta_kodu,@adres,@uye_id,@sifre,@hesap_durumu)", con);
                cmd.Parameters.AddWithValue("@ad_soyad", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@dogum_tarihi", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@iletisim_no", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@ulke", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@sehir", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@posta_kodu", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@adres", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@uye_id", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@sifre", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@hesap_durumu", "pending");
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}