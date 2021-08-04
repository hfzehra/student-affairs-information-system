<%@ Page Title="" Language="C#" MasterPageFile="~/Öğretmen.Master" AutoEventWireup="true" CodeBehind="DersEkle.aspx.cs" Inherits="oibsproje.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form id="Form1" runat="server">
        <div class="form-group">
           
             <div>
                <asp:Label for="TxtDersAdı" runat="server">Ders Adı :</asp:Label>
                <asp:TextBox ID="TxtDersAdı" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
           
          
        </div>
        <asp:Button ID="Button1" NavigateUrl="~/DersEkle.aspx" runat="server" Text="EKLE" CssClass="btn btn-info" OnClick="Button1_Click" />
    </form>

</asp:Content>
