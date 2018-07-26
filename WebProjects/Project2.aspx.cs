using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjects
{
    public partial class Project2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            GridViewRow r = ((GridViewRow)b.NamingContainer);
            //Response.Write(r.Cells[0], +',' + r.Cells[1].Text);
            //checkm divyas program
        }
    }
}