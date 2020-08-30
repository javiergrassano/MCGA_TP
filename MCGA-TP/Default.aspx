<%@ Page Title="MCGA - TPS" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MCGA_TP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>MODELOS COMPUTACIONALES DE GESTIÓN ADMINISTRATIVA</h1>
        <p class="lead">Trabajos practicos grupales</p>
        <h2>Integrantes del equipo</h2>
        <strong>Cortes, Hernán</strong> <a href="mailto:hernancorteshc@hotmail.com">hernancorteshc@hotmail.com</a><br />
        <strong>Detitto, Julián</strong> <a href="mailto:julian.detitto@gmail.com">julian.detitto@gmail.com</a><br />
        <strong>Gonzales, Juan Cruz</strong> <a href="mailto:juancruzgm15@gmail.com">juancruzgm15@gmail.com</a><br />
        <strong>Grassano, Javier</strong> <a href="mailto:javiergrassano@hotmail.com">javiergrassano@hotmail.com</a><br />
        <strong>Zalazar, Agustín</strong> <a href="mailto:agustin.zalazar@outlook.com">agustin.zalazar@outlook.com</a><br />
    </div>

    <h1>Trabajos Practicos</h1>
    <div class="row">
        <div class="col-md-4 alert alert-success">
            <strong>Trabajo practico 1</strong>
            <p>Resolución de la ecuación de Putman</p>
            <p>Utilizando SESSION y COOKIE</p>
            <a class="btn btn-success btn-block" href="tps\tp1.aspx">
                <span class="glyphicon glyphicon-new-window" aria-hidden="true"></span>
                Ir al tp
            </a>
            <a class="btn btn-info" href="tps/MCGA-CASTELAR-TP1-Codigo-Cortes-Detitto-Grassano-GonzalezMoro-Zalazar.pdf" target="_blank">
                <span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span>
                Descargar código en word
            </a>
            <a class="btn btn-warning" href="tps/MCGA-CASTELAR-TP1-Cuestionario-Cortes-Detitto-Grassano-GonzalezMoro-Zalazar.pdf" target="_blank">
                <span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span>
                Descargar cuestionario
            </a>
        </div>

        <div class="col-md-4 alert alert-info">
            <strong>Trabajo practico 2</strong>
            <p>Resolución de la ecuación de Putman</p>
            <p>Utilizando Web Service</p>
            <a class="btn btn-success btn-block" href="tps\tp2.aspx">Ir al tp</a>
            <a class="btn btn-info" href="tps/MCGA-CASTELAR-TP2-Codigo-Cortes-Detitto-Grassano-GonzalezMoro-Zalazar.pdf" target="_blank">
                <span class="glyphicon glyphicon-download-alt" aria-hidden="true"></span>
                Descargar código en word
            </a>
        </div>

    </div>

</asp:Content>
