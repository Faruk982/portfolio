using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace portfolio_now
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // To prevent reloading data on postback
            {
                string connectionString = "Data Source=DESKTOP-HSQD191\\SQLEXPRESS; Initial Catalog=Faruk; Integrated Security=True;";
                string query = "SELECT Email, Phone FROM Contact";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        connection.Open();
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                string email = reader["Email"].ToString();
                                string phoneNumber = reader["Phone"].ToString();

                                // Assign data to labels
                                lblEmail.Text = email;
                                lblPhoneNumber.Text = phoneNumber;
                            }
                        }
                    }
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string email = txtEmail.Text;
            string message = txtMessage.Text;

            string query = "INSERT INTO message (Sender, Message, Email) VALUES (@SenderName, @SenderEmail, @Message)";

            using (SqlConnection connection = new SqlConnection("Data Source=DESKTOP-HSQD191\\SQLEXPRESS; Initial Catalog=Faruk; Integrated Security=True;"))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@SenderName", name);
                    command.Parameters.AddWithValue("@SenderEmail", email);
                    command.Parameters.AddWithValue("@Message", message);

                    connection.Open();
                    command.ExecuteNonQuery();
                    txtName.Text = "";
                    txtEmail.Text = "";
                    txtMessage.Text = "";
                }
            }
        }
    }
}
