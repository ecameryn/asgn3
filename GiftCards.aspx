<%@ Page Title="GiftCards-PopUpShop" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GiftCards.aspx.cs" Inherits="GiftCards" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Make a Selection: <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceDrop" DataTextField="Name" DataValueField="ID"></asp:DropDownList>
        <asp:SqlDataSource runat="server" ID="SqlDataSourceDrop" ConnectionString='<%$ ConnectionStrings:dbHolstickAsgn3ConnectionString %>' SelectCommand="SELECT [ID], [Name] FROM [GiftCards] ORDER BY [Name]"></asp:SqlDataSource>
   
        <asp:DetailsView ID="DetailsView1" runat="server" Height="150px" Width="225px" AutoGenerateRows="False" DataSourceID="SqlDataSourceDetails" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True"></CommandRowStyle>

            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True"></FieldHeaderStyle>
            <Fields>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price"></asp:BoundField>
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description"></asp:BoundField>
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></FooterStyle>

            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#FFCC66" ForeColor="#333333"></PagerStyle>

            <RowStyle BackColor="#FFFBD6" ForeColor="#333333"></RowStyle>
        </asp:DetailsView>
        <asp:SqlDataSource runat="server" ID="SqlDataSourceDetails" ConnectionString='<%$ ConnectionStrings:dbHolstickAsgn3ConnectionString %>' SelectCommand="SELECT [Name], [Price], [Description] FROM [GiftCards] WHERE ([ID] = @ID) ORDER BY [Name]">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="ID" Type="Int32"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </p>

    <br /><br />

    <p>
        <a href="GiftCardsViewAll.aspx"> View All Items In This Category</a>
    </p>

    <p>
        <a href="ChangeGiftCardsDB.aspx"> Click Here To Update/Add/Delete Products</a>
    </p>
</asp:Content>

