
<%@ Page Title="Electronics-PopUpShop" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Electronics.aspx.cs" Inherits="Electronics" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   

    <p id="electronicSelection">
        Make A Selection: <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceElectronics" DataTextField="Name" DataValueField="ID"></asp:DropDownList>
        <asp:SqlDataSource runat="server" ID="SqlDataSourceElectronics" ConnectionString='<%$ ConnectionStrings:dbHolstickAsgn3ConnectionString %>' SelectCommand="SELECT [ID], [Name] FROM [Electronics] ORDER BY [Name]"></asp:SqlDataSource>
       
        <asp:DetailsView ID="DetailsView1" runat="server" Height="150px" Width="225px" AutoGenerateRows="False" DataSourceID="SqlDataSourceElectronicsViewChosen" CellPadding="4" ForeColor="#333333" GridLines="None">
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
        </asp:detailsview>

        <asp:SqlDataSource runat="server" ID="SqlDataSourceElectronicsViewChosen" ConnectionString='<%$ ConnectionStrings:dbHolstickAsgn3ConnectionString %>' SelectCommand="SELECT [Name], [Price], [Description] FROM [Electronics] WHERE ([ID] = @ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="ID" Type="Int32"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </p>

    <br /><br />

    <p>
        <a href="ElectronicsViewAll.aspx"> View All Items In This Category</a>
    </p>

    <p>
        <a href="ChangeElectronicsDB.aspx"> Click Here To Update/Add/Delete Products</a>
    </p>
</asp:Content>

 