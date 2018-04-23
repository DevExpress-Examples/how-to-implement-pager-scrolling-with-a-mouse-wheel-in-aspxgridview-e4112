using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxGridView;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Init(object sender, EventArgs e) {
    }
    protected void ASPxGridView1_CustomCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewCustomCallbackEventArgs e) {
        ASPxGridView grid = sender as ASPxGridView;
        ChangePageIndex(grid, e.Parameters);
    }
    private void ChangePageIndex(ASPxGridView grid, string parameters) {
        if(Convert.ToInt32(parameters) < 0) {
            if(grid.PageIndex < grid.PageCount - 1)
                grid.PageIndex++;
            else
                grid.PageIndex = 0;
        }
        else {
            if(grid.PageIndex > 0)
                grid.PageIndex--;
            else
                grid.PageIndex = grid.PageCount;
        }
    }
}