<%@ Page Title="Register Here" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LearnCentre.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1><br />
       <p style=" font-size:30px; text-align:center">Tell us about yourself</p>
    </hgroup>
    <p class="message-info">
        Please enter your details. All fields are manadatory.
    </p>
                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>
</asp:Content>