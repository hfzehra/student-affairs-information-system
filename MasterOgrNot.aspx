<%@ Page Title="" Language="C#" MasterPageFile="~/Öğrenci.Master" AutoEventWireup="true" CodeBehind="MasterOgrNot.aspx.cs" Inherits="oibsproje.WebForm20" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered" >
 
    <tr>
      <th scope="col">ÖĞRENCİ İD</th>
      <th scope="col">ÖĞRENCİ AD-SOYAD</th>
      <th scope="col">DERS ADI</th>
      <th scope="col">VİZE</th>
      <th scope="col">FİNAL</th>
      <th scope="col">ORTALAMA</th>
      <th scope="col">DURUM</th>
    
      
    </tr>
 
  <tbody>
    
      <asp:Repeater ID="Repeater1" runat="server">

          <ItemTemplate>
              <tr>
                  <td><%#Eval("Ogrid")%></td>
                  <td><%#Eval("ÖğrenciAdSoyad")%></td>
                  <td><%#Eval("Ders_ad")%></td>
                  <td><%#Eval("Vize")%></td>
                  <td><%#Eval("Final")%></td>
                  <td><%#Eval("Ortalama")%></td>
                  <td><%#Eval("Durum")%></td>

              </tr>
          </ItemTemplate>
      </asp:Repeater>

  </tbody>
</table>

</asp:Content>
