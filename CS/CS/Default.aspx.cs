using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web.ASPxGridView;
using DevExpress.Web.ASPxEditors;

namespace WebApplication169
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ASPxLabel1_Load(object sender, EventArgs e)
        {
            ASPxGridView grid = ASPxGridView1;
            GridViewDataColumn col = grid.Columns["UnitsInStock"] as GridViewDataColumn;
            ASPxSummaryItem summary = grid.TotalSummary["UnitsInStock", DevExpress.Data.SummaryItemType.Sum];
            string text = summary.GetFooterDisplayText(col.FieldName, grid.GetTotalSummaryValue(summary));
            ASPxLabel label = (ASPxLabel)sender;
            label.Text = string.Format("{0}\r\n({1})", col.FieldName, text);

        }
    }
}
