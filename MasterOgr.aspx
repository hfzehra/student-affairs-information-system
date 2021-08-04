<%@ Page Title="" Language="C#" MasterPageFile="~/Öğrenci.Master" AutoEventWireup="true" CodeBehind="MasterOgr.aspx.cs" Inherits="oibsproje.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
           
           
             <div>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="False"> Numara : </asp:TextBox>
            </div>
             <br />
              <div>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="False"> Ad - Soyad : </asp:TextBox>
            </div>
             <br />
              <div>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Enabled="False"> E-mail : </asp:TextBox>
            </div>
             <br />
            
             <div>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Enabled="False"> Telefon : </asp:TextBox>
            </div>
             <br />
              <div>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Enabled="False"> Şifre : </asp:TextBox>
            </div>
           
            
        </div>
         <asp:Button ID="Button1" runat="server" Text="GÜNCELLE" CssClass="btn btn-primary" OnClick="Button1_Click" />
  </form>

</asp:Content>
