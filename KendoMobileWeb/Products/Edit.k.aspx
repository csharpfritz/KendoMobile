<%@ Page Title="Edit a game" Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" 
  Inherits="KendoMobile.Products.Edit" MasterPageFile="~/Site.k.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="mainContent">

        <asp:FormView runat="server" ID="myForm" 
        DefaultMode="Edit" DataKeyNames="Id"
        ItemType="KendoMobile.Models.BoardGame"
        SelectMethod="myForm_GetItem"
        UpdateMethod="myForm_UpdateItem"
        RenderOuterTable="false">

        <EditItemTemplate>

          <ul data-role="listview" data-style="inset">

            <asp:DynamicEntity runat="server" Mode="Edit"></asp:DynamicEntity>

          </ul>

          <div style="width: 100%; text-align: center;">
          <asp:LinkButton data-rel="external" runat="server" ID="submit" CommandName="Update" Text="Save Changes" CssClass="k-button selected-button" data-role="button" />
          <asp:LinkButton data-rel="external" runat="server" ID="cancel" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="k-button " data-role="button" OnClick="cancel_Click" />
            </div>

        </EditItemTemplate>


      </asp:FormView>

</asp:Content>