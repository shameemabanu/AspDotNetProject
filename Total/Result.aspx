<%@ Page Title="Thank You" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="LearnCentre.Result" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <p style="text-align:center; font-size:30px"><%: Title %></p>
    </hgroup>

    <p class="validation-summary-errors">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <div style="text-align:center; font-size:20px">
        <asp:Literal runat="server" ID="Message"/>
    </div>
    
</asp:Content>
