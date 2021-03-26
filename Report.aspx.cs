using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace Report
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void btnSearch_Click1(object sender, EventArgs e)
        {
            SqlConnection sqlcon = new SqlConnection
          (WebConfigurationManager.ConnectionStrings["Lab3"].ConnectionString);
            string query = "SELECT c.CustomerFirstName, c.CustomerLastName, a.AuctionPickUp, m.MoveDate, c.CAddress, c.CustomerCity, c.CustomerState, c.CustomerZip, m.ToStreet, m.ToCity, m.ToState, m.ToZipcode, c.CustomerPhone, c.CustomerEmail, s.AddServices, m.FinalCost, t.Experience, t.Review, t.NoteContents, c.EmployeeHandler FROM ((((Customer c INNER JOIN Auction a ON c.CustomerID = a.CustomerID) INNER JOIN Moving m ON c.CustomerID = m.CustomerID) INNER JOIN ServiceTicket s ON c.CustomerID = s.CustomerID) INNER JOIN TicketHistory t ON s.ServiceTicketID = t.ServiceTicketID) WHERE c.CustomerFirstName = '" + txtfn.Text + "' AND c.CustomerLastName = '" + txtln.Text + "'";
            SqlDataAdapter sda = new SqlDataAdapter(query, sqlcon);
            DataTable dtb1 = new DataTable();
            sda.Fill(dtb1);
            grdReport.DataSource = dtb1;
            grdReport.DataBind();
        }
    }
}