using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjects
{
    public partial class project1 : System.Web.UI.Page
    {
        TrainingDBEntities db = new TrainingDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TextBox1.Text) && string.IsNullOrEmpty(TextBox2.Text))
            {
                var data = db.RegisterShoppings.ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();
            }
            if (!string.IsNullOrEmpty(TextBox1.Text))
            {
                string name = TextBox1.Text;
                var data = (from t in db.RegisterShoppings
                            where t.Name == name
                            select t).ToList();
                if (data.Count() == 0)
                    Label1.Text = "name invalid";
                else
                {
                    GridView1.DataSource = data;
                    GridView1.DataBind();
                }

            }
            if (!string.IsNullOrEmpty(TextBox2.Text))
            {
                string gen = TextBox2.Text;
                var data = (from t in db.RegisterShoppings
                            where t.Gender ==gen
                            select t).ToList();
                if (data.Count() == 0)
                    Label1.Text = "invalid";
                else
                {
                    GridView1.DataSource = data;
                    GridView1.DataBind();
                }

            }
        }
    }
}
