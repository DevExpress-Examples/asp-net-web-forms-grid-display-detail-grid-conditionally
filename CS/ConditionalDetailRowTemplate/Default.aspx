<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ConditionalDetailRowTemplate._Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxGridView ID="gridMaster" runat="server" AutoGenerateColumns="False" KeyFieldName="ID" Width="634px">
            <Templates>
                <DetailRow>
                    <dx:ASPxGridView ID="gridProduct" runat="server" OnLoad="gridProduct_Load" Visible='<%# IsGridProductVisible(Container.KeyValue) %>' AutoGenerateColumns="False">
                        <Columns>
                            <dx:GridViewDataTextColumn FieldName="Name" />
                            <dx:GridViewDataHyperLinkColumn FieldName="WebPage" />
                        </Columns>
                    </dx:ASPxGridView>
                    <dx:ASPxGridView ID="gridComponent" runat="server" AutoGenerateColumns="False"
                        KeyFieldName="ID" OnLoad="gridComponent_Load" Visible='<%# IsGridComponentVisible(Container.KeyValue) %>' >
                        <Columns>
                            <dx:GridViewDataTextColumn FieldName="ClassName" Name="colName" />
                            <dx:GridViewDataTextColumn FieldName="Namespace" Name="colNamespace" />
                            <dx:GridViewDataCheckColumn FieldName="IsVisual" Name="colIsVisual" />
                        </Columns>
                        <SettingsDetail IsDetailGrid="True" />
                    </dx:ASPxGridView>
                </DetailRow>
            </Templates>
            <Columns>
                <dx:GridViewDataTextColumn FieldName="Category" Name="colCategory" />
            </Columns>
            <SettingsDetail ShowDetailRow="True" />
        </dx:ASPxGridView>
    </div>
    </form>
</body>
</html>
