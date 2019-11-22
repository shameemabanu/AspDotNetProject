<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LearnCentre._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %></h1>
                <h2></h2>
            </hgroup>
            <p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus.</p>
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
   <div style="display:table;border-collapse:separate;border-spacing:5px;">
       <div style="display:table-row-group;">
            <h2 >Courses Provided</h2>
            <hr>
       </div>
       <div style="display:table-row">
           <div style="border:1px solid black; text-align:center; padding:5px 5px; display:table-cell">
               <h4>Course Name</h4>
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus.</p>
               <asp:Button ID="Button1" runat="server" Text="Select" />
           </div>
           <div style="border:1px solid black; text-align:center; padding:5px 5px; display:table-cell">
               <h4>Course Name</h4>
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus.</p>
               <asp:Button ID="Button2" runat="server" Text="Select" />
           </div>    
       </div>    
       <div style="display:table-row">
           <div style="border:1px solid black; text-align:center; padding:5px 5px; display:table-cell">
               <h4>Course Name</h4>
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus.</p>
               <asp:Button ID="Button3" runat="server" Text="Select" />
           </div>
           <div style="border:1px solid black; text-align:center; padding:5px 5px; display:table-cell">
               <h4>Course Name</h4>
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus.</p>
               <asp:Button ID="Button4" runat="server" Text="Select" />
           </div>    
       </div>  

</asp:Content>
