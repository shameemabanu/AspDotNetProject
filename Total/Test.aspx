<%@ Page Title="Start Test" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="LearnCentre.Test" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
       <%-- <h1><%: Title %></h1><br />--%>
       <p style=" font-size:30px; text-align:center">Test Information</p>
    </hgroup>

    <p class="validation-summary-errors">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
   <div>
            <div style="float:left; width:50%">
                <p><b>Instructions:</b></p>
                <p>Total number of questions : <b>4</b></p>
                <p>Each question carry 1 mark, no negative marks.</p>
                <p>Select the category of the questions and then click the Start Test button.</p>
            </div>
            <div style="float:right; width:50%" >
                <table cellspacing="0" cellpadding="4" style="border: 2px solid #f2f2f2" >
                    <tr><td bgcolor="#f2f2f2"><b>&nbsp;Note:</b></td></tr>
                    <tr>
                        <td>
                            <ul>
                                <li style="padding-bottom:5px; padding-left:5px">To submit the test, click the Finish button at the end of the test.</li>
                                <li style="padding-bottom:0px; padding-left:5px">Don't refresh the page.</li>
                            </ul>
                        </td>
                    </tr>
                </table>
            </div>
    <br />
    <br />
       <br />
       <br />
    <br />
       <br />
       <br />
       <br />
       <div style="margin-left:300px">
           <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="QuizDBSource" DataTextField="Title" DataValueField="QuizID"></asp:DropDownList>
           <asp:SqlDataSource ID="QuizDBSource" runat="server" ConnectionString="<%$ ConnectionStrings:QuizDBConnectionString %>" SelectCommand="SELECT * FROM [Quiz]"></asp:SqlDataSource>
           <asp:Button style="margin-left:100px;" ID="StartTest" runat="server" Text="Start Test" OnClick="StartTest_Click" />  
       </div>
        
       </div>
</asp:Content>