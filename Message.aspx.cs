using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace portfolio_now
{
    public partial class Message : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");
        }

        protected void btnShowEmail_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=DESKTOP-HSQD191\\SQLEXPRESS; Initial Catalog=Faruk; Integrated Security=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT Sender, Message FROM message WHERE Email = @Email";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", txtEmail.Text);

                    try
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();

                        if (reader.Read())
                        {
                            lblShowMessage.Text = $"Name: {reader["Sender"]}<br />Message: {reader["Message"]}";
                        }
                        else
                        {
                            lblShowMessage.Text = "No message found for the provided email.";
                        }

                        reader.Close();
                    }
                    catch (Exception ex)
                    {
                        lblShowMessage.Text = "An error occurred: " + ex.Message;
                    }
                }
                txtEmail.Text = "";
            }
        }

        protected void btnDeleteEmail_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=DESKTOP-HSQD191\\SQLEXPRESS; Initial Catalog=Faruk; Integrated Security=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM message WHERE Email = @Email";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", txtEmail.Text);

                    try
                    {
                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            lblShowMessage.Text = "Message deleted successfully.";
                            txtEmail.Text = "";
                        }
                        else
                        {
                            lblShowMessage.Text = "No message found for the provided email.";
                        }
                    }
                    catch (Exception ex)
                    {
                        lblShowMessage.Text = "An error occurred: " + ex.Message;
                    }
                }
            }
        }
    }
}
