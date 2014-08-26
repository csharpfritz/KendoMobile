<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KendoMobile.Products.Default" MasterPageFile="~/Site.Master"  %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">

      <h2>My Games for Sale</h2>

  <asp:GridView runat="server" ID="grid" DataKeyNames="ID"
    SelectMethod="Get" AllowSorting="true" AutoGenerateColumns="false" 
    CellPadding="4" ForeColor="#333333" GridLines="None">

    <Columns>
      <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="id" />
      <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ItemStyle-Width="200" />
      <asp:BoundField DataField="Price" HeaderText="Price $$$" SortExpression="Price" ItemStyle-Width="100" DataFormatString="${0:0.00}" ItemStyle-HorizontalAlign="Right" />
      <asp:BoundField DataField="NumInStock" HeaderText="# in Stock" SortExpression="NumInStock" ItemStyle-Width="100" ItemStyle-HorizontalAlign="Right" />
      <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="/Products/Edit/{0}" Text="Edit"></asp:HyperLinkField>
    </Columns>

    <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
    <EditRowStyle BackColor="#2461BF"></EditRowStyle>
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>
    <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>
    <RowStyle BackColor="#EFF3FB"></RowStyle>
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>
    <SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>
    <SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>
    <SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>
    <SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
  </asp:GridView>


</asp:Content>