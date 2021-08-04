<%@ Page Title="" Language="C#" MasterPageFile="~/Öğretmen.Master" AutoEventWireup="true" CodeBehind="NotGüncelle.aspx.cs" Inherits="oibsproje.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            
            <br />
             <div>
                <asp:Label for="TxtDuyuruad" runat="server">Ders Adı :</asp:Label>
                <asp:TextBox ID="TxtDuyuruAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
             <br />
            <div>
                <asp:Label for="TxtOgrid" runat="server">Öğrenci id :</asp:Label>
                <asp:TextBox ID="TxtOgrid" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgradsoyad" runat="server">Öğrenci adı-soyadı :</asp:Label>
                <asp:TextBox ID="TxtOgradsoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrvize" runat="server">Vize :</asp:Label>
                <asp:TextBox ID="TxtOgrvize" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
             <br />
            <div>
                <asp:Label for="TxtOgrfinal" runat="server">Final :</asp:Label>
                <asp:TextBox ID="TxtOgrfinal" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
              <br />
            <div>
                <asp:Label for="Txtort" runat="server">Ortalama :</asp:Label>
                <asp:TextBox ID="Txtort" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
             <br />
            <div>
                <asp:Label for="Txtdurum" runat="server">Durum :</asp:Label>
                <asp:TextBox ID="Txtdurum" runat="server" CssClass="form-control"></asp:TextBox>
           </div>
          
        </div>
        <asp:Button ID="ButtonHesapla" runat="server" Text="HESAPLA" CssClass="btn btn-toolbar" OnClick="ButtonHesapla_Click"  />
        <asp:Button ID="ButtonGüncelle" runat="server" Text="GÜNCELLE" CssClass="btn btn-primary" OnClick="ButtonGüncelle_Click"  />
    </form>

</asp:Content>
