﻿<%@ Page Title="Make KidsDB Changes" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangeKidsDB.aspx.cs" Inherits="ChangeKidsDB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridViewKids" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceKidsChange" AutoGenerateEditButton="true" AutoGenerateDeleteButton="true" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID"></asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price"></asp:BoundField>
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description"></asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#FFCC66" ForeColor="#333333"></PagerStyle>

        <RowStyle BackColor="#FFFBD6" ForeColor="#333333"></RowStyle>

        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#FDF5AC"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#4D0000"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#FCF6C0"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#820000"></SortedDescendingHeaderStyle>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSourceKidsChange" ConnectionString='<%$ ConnectionStrings:dbHolstickAsgn3ConnectionString %>'  DeleteCommand="DELETE FROM [Kids] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Kids] ([ID], [Name], [Price], [Description]) VALUES (@ID, @Name, @Price, @Description)" ProviderName="<%$ ConnectionStrings:dbHolstickAsgn3ConnectionString.ProviderName %>" SelectCommand="SELECT [ID], [Name], [Price], [Description] FROM [Kids]" UpdateCommand="UPDATE [Kids] SET [Name] = @Name, [Price] = @Price, [Description] = @Description WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <a href="Default.aspx">Home</a>
</asp:Content>

