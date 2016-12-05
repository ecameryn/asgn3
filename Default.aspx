<%@ Page Title="MyStore" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
        <p> <!--Electronics<br />-->
           <a href="Electronics.aspx"> 
               ELECTRONICS<img src="Images/electronics.jpg" class="mainpgImage"/>
           </a>
        </p>

        <p> <!--Kids<br />-->
            <a href="Kids.aspx">
                KIDS<br /><img src="Images/kids.jpg" class="mainpgImage"/>
            </a>
        </p>

        <p> <!--Gift Cards<br />-->
            <a href="GiftCards.aspx">
                GIFT CARDS<br /><img src="Images/giftcards.jpg" class="mainpgImage" />
            </a>

        <p> <!--Almost Gone!<br />-->
            <a href="LastChance.aspx">
                HURRY<br /><img src="Images/lastchance.jpg" class="mainpgImage" />
            </a>
        </p>
    </div>
</asp:Content>

