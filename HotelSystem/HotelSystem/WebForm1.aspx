﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HotelSystem.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    
    <form id="form2" runat="server">

    <div>

        First textbox : <asp:TextBox ID="TextBox0" runat="server" /><br />

        Focus to open a popup : <asp:TextBox ID="txtOpenPopup" runat="server" onkeydown="OpenPopup()" onmousedown="OpenPopup()" /> <br />

        TextBox 1 : <asp:TextBox ID="TextBox1" runat="server" ClientIDMode="Static" /><br />

        TextBox 2 : <asp:TextBox ID="TextBox2" runat="server" ClientIDMode="Static" /><br />

        TextBox 3 : <asp:TextBox ID="TextBox3" runat="server" ClientIDMode="Static" /><br />

    </div>

</form>

<script language="javascript">

function OpenPopup() {

    popup("Pop_Up.aspx");

}

// copied from http://www.dotnetfunda.com/codes/code419-code-to-open-popup-window-in-center-position-.aspx

function popup(url) {

    var width = 300;

    var height = 200;

    var left = (screen.width - width) / 2;

    var top = (screen.height - height) / 2;

    var params = 'width=' + width + ', height=' + height;

    params += ', top=' + top + ', left=' + left;

    params += ', directories=no';

    params += ', location=no';

    params += ', menubar=no';

    params += ', resizable=no';

    params += ', scrollbars=no';

    params += ', status=no';

    params += ', toolbar=no';

    newwin = window.open(url, 'windowname5', params);

    if (window.focus) { newwin.focus() }

    return false;

}

</script>
</body>
</html>
