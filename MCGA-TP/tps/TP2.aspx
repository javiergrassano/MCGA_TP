<%@ Page Title="Trabajo Practico 2" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TP2.aspx.cs" Inherits="MCGA_TP.TP2" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Trabajo practico N°2 <small>Ecuación de Putman</small></h1>
    
    <h2>Consigna:</h2>
    <div class="row">
        <div class="col-md-12">
            <p>Se necesita conocer el esfuerzo que implica el desarrollo de software.</p>
            <p>Consignas del código:</p>
            <ul>
                <li>Resolver la ecuación de putman.</li>
                <li>Resolver por <b>Web Service</b>.</li>
                <li>Se debe usar un control de validación la Ck que es la constante tecnológica.</li>
            </ul>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <p><b>Se debera despejar  <span class="variable">K</span> y enviar <span class="variable">L, Ck, td</span></b></p>
        </div>
    </div>

    <h2>Datos de entrada.</h2>
    <div class="row">
        <div class="col-md-8">
            <div class="form-horizontal">
                <div class="form-group">
                    <label for="inputL" class="col-sm-6 control-label">Líneas de código en miles <span class="variable">L</span></label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="inputL" runat="server" class="form-control">33000</asp:TextBox>
                       <%-- <asp:RequiredFieldValidator ID="requiredL" runat="server" ControlToValidate="inputL" ErrorMessage="Ingrese el valor de L" Display="Dynamic" CssClass="error" />
                        <asp:RegularExpressionValidator ID="regularL" runat="server" ControlToValidate="inputL" ErrorMessage="Ingrese un número" Display="Dynamic" CssClass="error"  ValidationExpression="^\d+$" />--%>
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputCK" class="col-sm-6 control-label">Constante Tecnológica <span class="variable">Ck</span></label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="inputCK" runat="server" class="form-control">11000</asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="requiredCK" runat="server" ControlToValidate="inputCK" ErrorMessage="Ingrese el valor de Ck" Display="Dynamic"  CssClass="error" />
                        <asp:RegularExpressionValidator ID="regularCK" runat="server" ControlToValidate="inputCK" ErrorMessage="Ingrese un número" ValidationExpression="^\d+$" Display="Dynamic"  CssClass="error" />
                        <asp:RangeValidator ID="rangeCK" runat="server" ControlToValidate="inputCK" MaximumValue="11000" ErrorMessage="Ingrese un valor entre 0 y 11000" Display="Dynamic"  CssClass="error" ></asp:RangeValidator>--%>
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputTD" class="col-sm-6 control-label">Tiempo de desarrollo en <b>meses</b> <span class="variable">td</span></label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="inputTD" runat="server" class="form-control">21</asp:TextBox>
                    <%--    <asp:RegularExpressionValidator ID="regularTD" runat="server" ControlToValidate="inputTD" ErrorMessage="Ingrese un número" ValidationExpression="^\d+$" Display="Dynamic"  CssClass="error" />
                        <asp:RequiredFieldValidator ID="requiredTD" runat="server" ControlToValidate="inputTD" ErrorMessage="Ingrese el valor de td" Display="Dynamic"  CssClass="error" />--%>
                    </div>
                </div>

               <div class="form-group">
                    <div class="col-sm-offset-6 col-sm-6">
                        <asp:Button ID="btnWS" runat="server" class="btn btn-primary btn-block" Text="Resolver por Web Service" OnClick="btnWS_Click" />
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputK" class="col-sm-6 control-label">Esfuerzo (persona/año) - <span class="variable">K</span></label>
                    <div class="col-sm-6">
                        <b><asp:Label ID="resultK" runat="server" /></b>
                    </div>
                </div>


                <div class="alert alert-danger" role="alert" runat="server" id="msgError" visible="false" />

            </div>
        </div>
    </div>
</asp:Content>
 