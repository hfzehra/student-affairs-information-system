<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="oibsproje.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />

    <title></title>
    <style type="text/css">
        #form1 {
            height: 657px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('arkaplan2.jpg'); background-repeat: no-repeat;">
        <div style ="width:500px; margin:auto; ">
             <br />
            <h3 style="font-family: 'Segoe Script'; font-style: normal; font-variant: normal; text-transform: none; color: #000000; text-align: center;"> ÖĞRENCİ İŞLERİ BİLGİ SİSTEMİ </h3>
             <br />
             
            <div  style ="text-align:center">
            <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" ImageUrl="~/logo5.png" /></div>
             <br />
             <br />
              <div>
                <asp:Label for="TxtNu" runat="server" ForeColor="White">KULLANICI NO :</asp:Label> 
                  <asp:TextBox ID="TxtNu" runat="server" CssClass="form-control" Width="500px" ></asp:TextBox>
               
            </div>
            <br />
             <div>
                <asp:Label for="TxtSifre" runat="server" ForeColor="White">KULLANICI ŞİFRE :</asp:Label>
                <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" Width="500px" TextMode="Password"></asp:TextBox>
            </div>
             <br />
            <asp:Button ID="Button1" runat="server" Text="ÖĞRENCİ GİRİŞİ" CssClass="btn btn-success" Width="500px" OnClick="Button1_Click"/>
            <br />
            <br />
            <div style="margin:auto">
            <asp:Button ID="Button3" runat="server" Text="Şifremi Unuttum" CssClass="btn btn-default" Width="145px"/>
            <asp:Button ID="Button2" runat="server" Text="ÖĞRETMEN GİRİŞİ" CssClass="btn btn-danger" Width="200px" OnClick="Button2_Click"/>
            <asp:Button ID="Button4" runat="server" Text="Yardım" CssClass="btn btn-info"  Width="145px" /> 
            </div>
        </div>
    </form>
</body>
</html>
