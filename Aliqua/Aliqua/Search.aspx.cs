using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Search : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var searchText = Request.Form["SearchBox"];

                using (var context = new AliquaEntitiesContext())
                {
                    var entities = new List<CollegeInfo>();
                    var entity = context.CollegeInfoes.Find(searchText);

                    var collegeNameResults = from b in context.CollegeInfoes
                        where b.Name.ToLower().Contains(searchText.ToLower())
                        select b;
                    var collegeAddressResults = from b in context.CollegeInfoes
                        where b.Address.ToLower().Contains(searchText.ToLower())
                        select b;
                    var collegeDistrictResults = from b in context.CollegeInfoes
                        where b.District.ToLower().Contains(searchText.ToLower())
                        select b;

                    entities.AddRange(collegeNameResults);
                    entities.AddRange(collegeAddressResults);
                    entities.AddRange(collegeDistrictResults);
                    if (entity != null)
                        entities.Add(entity);

                    GridView1.Visible = false;
                    GridView3.RowCreated += bla_RowCreated;
                    GridView3.DataSource = entities;
                    GridView3.DataBind();
                }
            }
        }

        protected void bla_RowCreated(object sender, GridViewRowEventArgs e)
        {
            e.Row.Cells[6].Visible = false; // hides the first column
            e.Row.Cells[5].Visible = false;
        }

        protected void CustomersGridView_Sorting(Object sender, GridViewSortEventArgs e)
        {
            // Cancel the sorting operation if the user attempts
            // to sort by address.
            if (e.SortExpression == "Address")
            {
                e.Cancel = true;
                //   Message.Text = "You cannot sort by address.";
                // SortInformationLabel.Text = "";
            }
            else
            {
                //Message.Text = "";
            }
        }

        protected void CustomersGridView_Sorted(Object sender, EventArgs e)
        {
            // Display the sort expression and sort direction.
            //SortInformationLabel.Text = "Sorting by " +
            //CustomersGridView.SortExpression.ToString() +
            //" in " + CustomersGridView.SortDirection.ToString() +
            //" order.";
        }

        protected void TaskGridView_Sorting(object sender, GridViewSortEventArgs e)
        {

            //Retrieve the table from the session object.
            var dt = Session["TaskTable"] as DataTable;

            if (dt != null)
            {

                //Sort the data.
                dt.DefaultView.Sort = e.SortExpression + " " + GetSortDirection(e.SortExpression);
                GridView3.DataSource = Session["TaskTable"];
                GridView3.DataBind();
            }

        }

        private string GetSortDirection(string column)
        {

            // By default, set the sort direction to ascending.
            string sortDirection = "ASC";

            // Retrieve the last column that was sorted.
            string sortExpression = ViewState["SortExpression"] as string;

            if (sortExpression != null)
            {
                // Check if the same column is being sorted.
                // Otherwise, the default value can be returned.
                if (sortExpression == column)
                {
                    string lastDirection = ViewState["SortDirection"] as string;
                    if ((lastDirection != null) && (lastDirection == "ASC"))
                    {
                        sortDirection = "DESC";
                    }
                }
            }
            return sortDirection;
        }
    }
}