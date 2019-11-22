<%@ Page Title="Questions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Questions.aspx.cs" Inherits="LearnCentre.Questions" %>
<%@ Import Namespace="System.Web.Routing" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <p style="text-align:center; font-size:30px"><%: Title %></p>
    </hgroup>

    <div>
        <div style=" width:50%; margin:auto">

            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="QuestionDataSource" Height="50px" Width="500px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="10" CellSpacing="10" DataKeyNames="QuestionID">
                <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Answer1" HeaderText="Answer1" SortExpression="Answer1" />
                    <asp:BoundField DataField="Answer2" HeaderText="Answer2" SortExpression="Answer2" />
                    <asp:BoundField DataField="Answer3" HeaderText="Answer3" SortExpression="Answer3" />
                    <asp:BoundField DataField="Answer4" HeaderText="Answer4" SortExpression="Answer4" />
                </Fields>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="QuestionDataSource" runat="server">
            
            </asp:SqlDataSource>

            
            <div style="margin-top:10px">
                <section style="float:left;">
                    Your Answer:
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="1">Answer 1</asp:ListItem>
                        <asp:ListItem Value="2">Answer 2</asp:ListItem>
                        <asp:ListItem Value="3">Answer 3</asp:ListItem>
                        <asp:ListItem Value="4">Answer 4</asp:ListItem>
                    </asp:DropDownList>
                </section>
                
                <asp:Button ID="Next" style="float:right; margin-top:0; margin-right:0" runat="server" Text="Next" Font-Size="Smaller" OnClick="Next_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
