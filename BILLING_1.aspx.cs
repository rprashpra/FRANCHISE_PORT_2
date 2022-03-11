using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data;
namespace FRANCHISE_PORT_2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ClientScript.RegisterStartupScript(this.GetType(), "Javascript", "javascript:getDate(); ", true);
            using (SqlConnection con = new SqlConnection(@"Data Source=CIF5;Initial Catalog=CiftLab;Integrated Security=True"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT TOP 1 PatID FROM TBL_REG_0_10 ORDER BY PatID DESC", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);  // fill dataset  
                DropDownList12.DataTextField = ds.Tables[0].Columns["PatID"].ToString(); // text field PatID of table dispalyed in dropdown       
                // to retrive specific  textfield name   
                DropDownList12.DataSource = ds.Tables[0];      //assigning datasource to the dropdownlist  
                DropDownList12.DataBind();
            }
            if (new_id.Visible == true)
            {
                new_id.Enabled = true;
            }
            else
            {
                new_id.Enabled = false;
            }
            ClientScript.RegisterStartupScript(this.GetType(), "Javascript", "javascript:getDate(); ", true);
            ClientScript.RegisterStartupScript(this.GetType(), "Javascript", "javascript:openWin(); ", false);
            Btn_SAVE.Enabled = true;
        }
        protected void Btn_SAVE_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(@"Data Source=CIF5;Initial Catalog=CiftLab;Integrated Security=True"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("INSERT INTO TBL_REG_0_10 Values(@PatID,@Name,@age,@Address,@PhoneNo,@gender)", con);
                cmd.Parameters.AddWithValue("@PatID", new_id.Text);
                cmd.Parameters.AddWithValue("@Name", TextName.Text);
                cmd.Parameters.AddWithValue("@age", TextAge.Text);
                cmd.Parameters.AddWithValue("@Address", TextAddress.Text);
                cmd.Parameters.AddWithValue("@PhoneNo", TextPhone.Text);
                cmd.Parameters.AddWithValue("@gender", RadioButtonList2.SelectedValue);
                int i = cmd.ExecuteNonQuery();
                con.Close();
            }
            TextName.Text = "";
            TextAge.Text = "";
            TextAddress.Text = "";
            TextPhone.Text = "";
            RadioButtonList2.SelectedValue = "";
            new_id.Enabled = true;
            ClientScript.RegisterStartupScript(this.GetType(), "Javascript", "javascript:getDate(); ", false);
            Messagebox("Data Saved Successfully");
            Messagebox("PatID is:" + new_id.Text);
            ClientScript.RegisterStartupScript(this.GetType(), "Javascript", "javascript:openWin(); ",false);
            Btn_SAVE.Enabled = true;
        }
        public void Messagebox(string xMessage)
        {
            Response.Write("<script>alert('" + xMessage + "')</script>");
            Response.Write("<script>alret('"+ new_id.Text + "')</script>");
        }
       
    }
}