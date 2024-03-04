using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio_now
{
    public partial class EditContact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdateContact_Click(object sender, EventArgs e)
        {

        }

        protected void btnUpdateEmail_Click(object sender, EventArgs e)
        {
            string newEmail = txtNewEmail.Text;
            string oldEmail = txtOldEmail.Text;

            UpdateContactEmail(oldEmail, newEmail);
        }

        protected void btnUpdatePhone_Click(object sender, EventArgs e)
        {
            string newPhone = txtNewPhone.Text;
            string oldPhone = txtOldPhone.Text;

            UpdateContactPhone(oldPhone, newPhone);
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");
        }

        private void UpdateContactEmail(string oldEmail, string newEmail)
        {
            string query = "SELECT COUNT(*) FROM Admin WHERE Email = @Email";

            using (SqlConnection connection = new SqlConnection("Data Source=DESKTOP-HSQD191\\SQLEXPRESS; Initial Catalog=Faruk; Integrated Security=True;"))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", oldEmail);

                    connection.Open();
                    int count = (int)command.ExecuteScalar();

                    if (count > 0)
                    {
                        string connectionString = "Data Source=DESKTOP-HSQD191\\SQLEXPRESS; Initial Catalog=Faruk; Integrated Security=True;";
                        string updateQuery = "UPDATE Contact SET Email = @NewEmail WHERE Email = @OldEmail";

                        using (SqlConnection connection1 = new SqlConnection(connectionString))
                        {
                            using (SqlCommand command1 = new SqlCommand(updateQuery, connection1))
                            {
                                command1.Parameters.AddWithValue("@NewEmail", newEmail);
                                command1.Parameters.AddWithValue("@OldEmail", oldEmail);

                                connection1.Open();
                                command1.ExecuteNonQuery();
                            }
                        }
                        updateQuery = "UPDATE Admin SET Email = @NewEmail WHERE Email = @OldEmail";

                        using (SqlConnection connection1 = new SqlConnection(connectionString))
                        {
                            using (SqlCommand command1 = new SqlCommand(updateQuery, connection1))
                            {
                                command1.Parameters.AddWithValue("@NewEmail", newEmail);
                                command1.Parameters.AddWithValue("@OldEmail", oldEmail);

                                connection1.Open();
                                command1.ExecuteNonQuery();
                            }
                        }
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "InvalidLogin", "alert('Invalid email or password. Please try again.');", true);
                    }
                }
            }
        }

        private void UpdateContactPhone(string oldPhone, string newPhone)
        {
            string connectionString = "Data Source=DESKTOP-HSQD191\\SQLEXPRESS; Initial Catalog=Faruk; Integrated Security=True;";
            string updateQuery = "UPDATE Contact SET Phone = @NewPhone WHERE Phone = @OldPhone";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(updateQuery, connection))
                {
                    command.Parameters.AddWithValue("@NewPhone", newPhone);
                    command.Parameters.AddWithValue("@OldPhone", oldPhone);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}
