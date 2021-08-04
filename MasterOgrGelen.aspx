<%@ Page Title="" Language="C#" MasterPageFile="~/Öğrenci.Master" AutoEventWireup="true" CodeBehind="MasterOgrGelen.aspx.cs" Inherits="oibsproje.WebForm22" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

      <table class="table table-bordered" >
 
    <tr>
    
      <th scope="col">GÖNDEREN</th>
      <th scope="col">BAŞLIK</th>
      <th scope="col">iÇERİK</th>
    
    </tr>
 
  <tbody>
    
      <asp:Repeater ID="Repeater1" runat="server">

          <ItemTemplate>
              <tr>
                
                  <td><%#Eval("Gönderen")%></td>
                  <td><%#Eval("Baslik")%></td>
                  <td><%#Eval("İcerik")%></td>
         
              </tr>
          </ItemTemplate>
      </asp:Repeater>

  </tbody>
</table>

</asp:Content>
