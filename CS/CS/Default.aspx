<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication169._Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.2, Version=8.2.8.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.2, Version=8.2.8.0, Culture=neutral, PublicKeyToken=9b171c9fd64da1d1"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False"
            DataSourceID="AccessDataSource1" KeyFieldName="ProductID">
            <TotalSummary>
                <dxwgv:ASPxSummaryItem FieldName="UnitsInStock" SummaryType="Sum" />
            </TotalSummary>
            <Columns>
                <dxwgv:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" VisibleIndex="0">
                    <EditFormSettings Visible="False" />
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="1">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="SupplierID" VisibleIndex="2">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="3">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="QuantityPerUnit" VisibleIndex="4">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="5">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="6">
                    <HeaderCaptionTemplate>
                        <dxe:ASPxLabel ID="ASPxLabel1" runat="server" Text="" OnLoad="ASPxLabel1_Load">
                        </dxe:ASPxLabel>
                    </HeaderCaptionTemplate>
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="UnitsOnOrder" VisibleIndex="7">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="ReorderLevel" VisibleIndex="8">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="9">
                </dxwgv:GridViewDataCheckColumn>
                <dxwgv:GridViewDataTextColumn FieldName="EAN13" VisibleIndex="10">
                </dxwgv:GridViewDataTextColumn>
            </Columns>
            <Settings ShowHeaderFilterButton="True" />
        </dxwgv:ASPxGridView>
    
    </div>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT * FROM [Products]"></asp:AccessDataSource>
    </form>
</body>
</html>
