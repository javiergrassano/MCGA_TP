<%@ Page Title="Trabajo Practico 1" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TP1.aspx.cs" Inherits="MCGA_TP.TP1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Trabajo practico N°1 <small>Ecuacion de Putman</small></h1>
    
    <h2>Consigna:</h2>
    <div class="row">
        <div class="col-md-12">
            <p>Se necesita conocer el esfuerzo que implica el desarrollo de software.</p>
            <p>Consignas del codigo:</p>
            <ul>
                <li>Resolver la ecuacion de putman.</li>
                <li>Resolver por <b>SESSION</b>.</li>
                <li>Resolver por <b>COOKIES</b>.</li>
                <li>Se debe usar un control de validacion la Ck que es la constante tecnologica.</li>
            </ul>
        </div>
    </div>

    <h2>Formular y variables.</h2>
    <div class="row">
        <div class="col-md-8">
            <div class="formula"><img src="tp1_1.png" /></div>
            <p><label class="variable">L</label> = Lineas de codigo en miles.</p>
            <p><label class="variable">Ck</label> = Constante Tecnologica de desarrollo.</p>
            <p><label class="variable">td</label> = Tiempo de desarrollo en años.</p>
            <p><label class="variable">K</label> = Esfuerzo (persona/año).</p>
        </div>
        <div class="col-md-4">
            <div class="alert alert-info ">
                <strong>Despeje de variable <label class="variable">K</label></strong><br />
                <div class="formula"><img src="tp1_2.png" /></div>
                <div class="formula"><img src="tp1_3.png" /></div>
            </div>
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
                    <label for="inputL" class="col-sm-6 control-label">Lineas de codigo en miles <span class="variable">L</span></label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="inputL" runat="server" class="form-control">33000</asp:TextBox>
                        <asp:RequiredFieldValidator ID="requiredL" runat="server" ControlToValidate="inputL" ErrorMessage="Ingrese el valor de L" Display="Dynamic" CssClass="error" />
                        <asp:RegularExpressionValidator ID="regularL" runat="server" ControlToValidate="inputL" ErrorMessage="Ingrese un numero" Display="Dynamic" CssClass="error"  ValidationExpression="^\d+$" />
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputCK" class="col-sm-6 control-label">Constante Tecnologica <span class="variable">Ck</span></label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="inputCK" runat="server" class="form-control">11000</asp:TextBox>
                        <asp:RequiredFieldValidator ID="requiredCK" runat="server" ControlToValidate="inputCK" ErrorMessage="Ingrese el valor de Ck" Display="Dynamic"  CssClass="error" />
                        <asp:RegularExpressionValidator ID="regularCK" runat="server" ControlToValidate="inputCK" ErrorMessage="Ingrese un numero" ValidationExpression="^\d+$" Display="Dynamic"  CssClass="error" />
                        <asp:RangeValidator ID="rangeCK" runat="server" ControlToValidate="inputCK" MaximumValue="11000" ErrorMessage="Ingrese un valor entre 0 y 11000" Display="Dynamic"  CssClass="error" ></asp:RangeValidator>
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputTD" class="col-sm-6 control-label">Tiempo de desarrollo en <b>meses</b> <span class="variable">td</span></label>
                    <div class="col-sm-6">
                        <asp:TextBox ID="inputTD" runat="server" class="form-control">21</asp:TextBox>
                        <asp:RegularExpressionValidator ID="regularTD" runat="server" ControlToValidate="inputTD" ErrorMessage="Ingrese un numero" ValidationExpression="^\d+$" Display="Dynamic"  CssClass="error" />
                        <asp:RequiredFieldValidator ID="requiredTD" runat="server" ControlToValidate="inputTD" ErrorMessage="Ingrese el valor de td" Display="Dynamic"  CssClass="error" />
                    </div>
                </div>

               <div class="form-group">
                    <div class="col-sm-offset-6 col-sm-6">
                        <asp:Button ID="btnSession" runat="server" class="btn btn-primary btn-block" Text="Resolver por session" OnClick="btnSession_Click" />
                        <asp:Button ID="btnCookie" runat="server" class="btn btn-warning btn-block" Text="Resolver por cookie" OnClick="btnCookie_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
