<%@ Page Title="" Language="C#" MasterPageFile="~/Öğretmen.Master" AutoEventWireup="true" CodeBehind="İstatistikler.aspx.cs" Inherits="oibsproje.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
           
           
             <div>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="False">Toplam Öğrenci Sayısı</asp:TextBox>
            </div>
             <br />
              <div>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="False">Toplam Öğretmen Sayısı</asp:TextBox>
            </div>
             <br />
              <div>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Enabled="False">Toplam Ders Sayısı</asp:TextBox>
            </div>
             <br />
            
             <div>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Enabled="False">Toplam Atılan Mesaj</asp:TextBox>
            </div>
             <br />
              <div>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Enabled="False">Toplam Duyuru Sayısı</asp:TextBox>
            </div>
             <br />
              <div>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Enabled="False">Matematik not ortalaması</asp:TextBox>
            </div>
            
        </div>
  </form>

</asp:Content>
