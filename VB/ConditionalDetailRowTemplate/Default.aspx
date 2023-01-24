<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="ConditionalDetailRowTemplate._Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=B88D1754D700E49A"
	Namespace="DevExpress.Web" TagPrefix="dxe" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=B88D1754D700E49A"
	Namespace="DevExpress.Web" TagPrefix="dxwgv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dxwgv:ASPxGridView ID="gridMaster" runat="server" AutoGenerateColumns="False" KeyFieldName="ID" Width="634px">
			<Templates>
				<DetailRow>
					<dxwgv:ASPxGridView ID="gridProduct" runat="server" OnLoad="gridProduct_Load" Visible='<%#IsGridProductVisible(Container.KeyValue)%>' AutoGenerateColumns="False">
						<Columns>
							<dxwgv:GridViewDataTextColumn FieldName="Name" VisibleIndex="0">
							</dxwgv:GridViewDataTextColumn>
							<dxwgv:GridViewDataHyperLinkColumn FieldName="WebPage" VisibleIndex="1">
							</dxwgv:GridViewDataHyperLinkColumn>
						</Columns>
					</dxwgv:ASPxGridView>
					<dxwgv:ASPxGridView ID="gridComponent" runat="server" AutoGenerateColumns="False"
						KeyFieldName="ID" OnLoad="gridComponent_Load" Visible='<%#IsGridComponentVisible(Container.KeyValue)%>' >
						<Columns>
							<dxwgv:GridViewDataTextColumn FieldName="ClassName" Name="colName" VisibleIndex="0">
							</dxwgv:GridViewDataTextColumn>
							<dxwgv:GridViewDataTextColumn FieldName="Namespace" Name="colNamespace" VisibleIndex="1">
							</dxwgv:GridViewDataTextColumn>
							<dxwgv:GridViewDataCheckColumn FieldName="IsVisual" Name="colIsVisual" VisibleIndex="2">
							</dxwgv:GridViewDataCheckColumn>
						</Columns>
						<SettingsDetail IsDetailGrid="True" />
					</dxwgv:ASPxGridView>
				</DetailRow>
			</Templates>
			<Columns>
				<dxwgv:GridViewDataTextColumn FieldName="Category" Name="colCategory" VisibleIndex="0">
				</dxwgv:GridViewDataTextColumn>
			</Columns>
			<SettingsDetail ShowDetailRow="True" />
		</dxwgv:ASPxGridView>
	</div>
	</form>
</body>
</html>
