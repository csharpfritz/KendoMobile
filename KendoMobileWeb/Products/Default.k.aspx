<%@ Page Title="Games for Sale" Language="C#" AutoEventWireup="true" CodeBehind="Default.k.aspx.cs" Inherits="KendoMobile.Products.Default_k" EnableViewState="false" MasterPageFile="~/Site.k.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="mainContent">

        <asp:ListView runat="server" ID="gameList"
          ItemType="KendoMobile.Models.BoardGame"
          ItemPlaceholderID="items"
          SelectMethod="Get">

          <LayoutTemplate>
            <ul data-role="listview" data-style="inset">
              <asp:PlaceHolder runat="server" ID="items" />
            </ul>
          </LayoutTemplate>

          <ItemTemplate>
            <li><a data-rel="external" href="Edit/<%#: Item.ID %>"><%#: Item.Name %></a></li>
          </ItemTemplate>

        </asp:ListView>

</asp:Content>