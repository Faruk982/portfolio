using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace portfolio_now
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string password = txtPassword.Text;

            string query = "SELECT COUNT(*) FROM Admin WHERE Email = @Email AND Password = @Password";

            using (SqlConnection connection = new SqlConnection("Data Source=DESKTOP-HSQD191\\SQLEXPRESS; Initial Catalog=Faruk; Integrated Security=True;"))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Password", password);

                    connection.Open();

                    int count = (int)command.ExecuteScalar();

                    if (count > 0)
                    {
                        Response.Redirect("admin.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "InvalidLogin", "alert('Invalid email or password. Please try again.');", true);
                    }
                }
            }
        }
    }
}
