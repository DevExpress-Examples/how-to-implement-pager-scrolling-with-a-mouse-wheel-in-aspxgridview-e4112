<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function SetEvents(element) {
            if (ASPxClientUtils.firefox)
                ASPxClientUtils.AttachEventToElement(element, 'DOMMouseScroll', onScroll);
            else
                ASPxClientUtils.AttachEventToElement(element, 'mousewheel', onScroll);
        }
        var onScroll = function (event) {
            if (event == undefined)
                event = window.event;
            var direction = (event.wheelDelta) ? event.wheelDelta : event.detail / -1;
            ASPxClientUtils.PreventEventAndBubble(event);
            grid.PerformCallback(direction);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/data.mdb"
            SelectCommand="SELECT [ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock] FROM [Products]">
        </asp:AccessDataSource>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" DataSourceID="AccessDataSource1"
            AutoGenerateColumns="False" KeyFieldName="ProductID" Width="400" ClientInstanceName="grid"
            OnCustomCallback="ASPxGridView1_CustomCallback">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" Width="80" VisibleIndex="0">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1" Width="200">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="2" Width="80">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="3" Width="100">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="4" Width="80">
                </dx:GridViewDataTextColumn>
            </Columns>
            <ClientSideEvents Init="function (s,e) { SetEvents(s.GetMainElement());}" />
            <Settings ShowVerticalScrollBar="true" />
        </dx:ASPxGridView>
    </div>
    </form>
</body>
</html>
