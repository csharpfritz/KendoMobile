<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="KendoMobile.Products.Edit" MasterPageFile="~/Site.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">

      <asp:FormView runat="server" ID="myForm" DefaultMode="Edit"
        SelectMethod="myForm_GetItem" 
        UpdateMethod="myForm_UpdateItem"
        ItemType="KendoMobile.Models.BoardGame"
        DataKeyNames="ID"
        >

        <HeaderTemplate>
            <asp:ValidationSummary runat="server" ID="errorSummary" CssClass="error" />
        </HeaderTemplate>

        <EditItemTemplate>

          <h2>Editing <%#: Item.Name %> (<%#: Item.ID %>)</h2>

          <fieldset>

            <ol>
              <asp:DynamicEntity runat="server" Mode="Edit"></asp:DynamicEntity>
            </ol>

            <asp:Button runat="server" ID="submit" Text="Save Changes" CommandName="Update" />
            <asp:Button runat="server" ID="cancel" Text="Cancel Changes" CommandName="Cancel" CausesValidation="false" OnClick="cancel_Click" />

          </fieldset>

        </EditItemTemplate>

      </asp:FormView>

</asp:Content>