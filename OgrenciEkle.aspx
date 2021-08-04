<%@ Page Title="" Language="C#" MasterPageFile="~/Öğretmen.Master" AutoEventWireup="true" CodeBehind="OgrenciEkle.aspx.cs" Inherits="oibsproje.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
             <div>
                <asp:Label for="TxtOgrnu" runat="server">Öğrenci Adı</asp:Label>
                <asp:TextBox ID="TxtOgrnu" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrad" runat="server">Öğrenci Adı</asp:Label>
                <asp:TextBox ID="TxtOgrad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrsoyad" runat="server">Öğrenci Soyadı</asp:Label>
                <asp:TextBox ID="TxtOgrsoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrtel" runat="server">Öğrenci Telefon</asp:Label>
                <asp:TextBox ID="TxtOgrtel" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrmail" runat="server">Öğrenci Mail</asp:Label>
                <asp:TextBox ID="TxtOgrmail" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
             <br />
            <div>
                <asp:Label for="TxtOgrsifre" runat="server">Öğrenci Şifre</asp:Label>
                <asp:TextBox ID="TxtOgrsifre" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
          
        </div>
        <asp:Button ID="Button1" runat="server" Text="KAYDET" CssClass="btn btn-info" OnClick="Button1_Click" />
    </form>

</asp:Content>
