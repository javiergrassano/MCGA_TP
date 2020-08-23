<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TP1result.aspx.cs" Inherits="MCGA_TP.TP1result" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Trabajo practico N°1 <small>Ecuacion de Putman</small></h1>
    <h2>Consigna:</h2>
    <div class="row">
        <div class="col-md-12">
            <p>Se necesita conocer el esfuerzo que implica el desarrollo de software.</p>
        </div>
    </div>
    <h2>Resolucion:</h2>
    <div class="row">
        <div class="col-md-6">
            <table class="table">
                <tr>
                    <td><label class="variable">L</label> - Lineas de codigo en miles :</td><td><asp:Label ID="inputL" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td><label class="variable">Ck</label> - Constante Tecnologica de desarrollo :</td><td><asp:Label ID="inputCK" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <td><label class="variable">td</label> - Tiempo de desarrollo (en años)</td><td><asp:Label ID="inputTD" runat="server"></asp:Label></td>
                </tr>
                <tr>
                    <th><label class="variable">K</label> - Esfuerzo (persona/año) </th><th><asp:Label ID="inputK" runat="server"></asp:Label></th>
                </tr>
            </table>
        </div>
        
    </div>
    <a href="TP1.aspx" class="btn btn-success">Volver a la consigna</a>


</asp:Content>
