<%@ Page Title="" Language="C#" MasterPageFile="~/Öğrenci.Master" AutoEventWireup="true" CodeBehind="MasterOgrDuyuru.aspx.cs" Inherits="oibsproje.WebForm25" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <table class="table table-bordered" >
 
    <tr>
      <th scope="col">İD</th>
      <th scope="col">BAŞLIK</th>
      <th scope="col">iÇERİK</th>
      <th scope="col">TARİH</th>
      <th scope="col">ÖĞRETMEN</th>
     
      
    </tr>
 
  <tbody>
    
      <asp:Repeater ID="Repeater1" runat="server">

          <ItemTemplate>
              <tr>
                  <td><%#Eval("Duyuru_id")%></td>
                  <td><%#Eval("Duyuru_baslik")%></td>
                  <td><%#Eval("Duyuru_icerik")%></td>
                  <td><%#Eval("Duyuru_tarih")%></td>
                  <td><%#Eval("Duyuru_ogrt")%></td>
                  
                
              </tr>
          </ItemTemplate>
      </asp:Repeater>

  </tbody>
</table>

</asp:Content>
