using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace portfolio_now
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEditHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void btnEditContact_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditContact.aspx");
        }

        protected void btnEditMessage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Message.aspx");
        }
    }
}